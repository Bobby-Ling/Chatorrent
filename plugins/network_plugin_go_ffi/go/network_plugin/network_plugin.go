// network_plugin.go file
package main

/*
#include "register_callback.h"
*/
import "C"
import (
	"fmt"
	"net/http"
	"sync"
	"time"
	"unsafe"
)

// 使用`go build -buildmode=c-shared -o network_plugin.dll network_plugin.go`生成network_plugin.h
// 或在network_plugin_go_ffi/windows下运行make生成network_plugin.h
// 然后 **network_plugin_go_ffi目录下** `dart run ffigen --config ffigen.yaml`生成network_plugin_go_ffi_bindings_generated.dart
// 在example目录下运行flutter run等进行测试(可能需要改动main.dart)

//export sum
func sum(a C.int, b C.int) C.int {
	return C.add_c(a, b);
}

//export sum_long_running
func sum_long_running(a C.int, b C.int) C.int {
	response, err := http.Get("https://example.com")
    if err != nil {
        fmt.Println("Error:", err)
        return -1
    }
    defer response.Body.Close()

	time.Sleep(4 * time.Second)
	return C.int(response.StatusCode)
}


//export registerCallback
func registerCallback(binop unsafe.Pointer) {
	C.register_callback(binop)
}

func fetchHeader(wg *sync.WaitGroup, mu *sync.Mutex, list *[]string) {
	defer wg.Done()

	// 发送GET请求
	resp, err := http.Get("https://www.baidu.com")
	if err != nil {
		fmt.Println("Error fetching:", err)
		return
	}
	defer resp.Body.Close()

	// 获取HTTP头部信息并转换为字符串
	headers := resp.Header

	// 锁定共享变量，防止并发写入
	mu.Lock()
	for key, value := range headers {
		*list = append(*list, fmt.Sprintf("%s: %s", key, value))
	}
	mu.Unlock()
}

func fetchHeadersConcurrently() []string {
	var wg sync.WaitGroup
	var mu sync.Mutex
	list := make([]string, 0)

	// 开启10个goroutines
	for i := 0; i < 10; i++ {
		wg.Add(1)
		go fetchHeader(&wg, &mu, &list)
	}

	// 等待所有goroutines完成
	wg.Wait()
	return list
}


// Define a WaitGroup to wait for the goroutine to finish
var wg sync.WaitGroup

// Go function to start a thread and call the dart callback
func startThread() {
	// Add a delta of 1 to the WaitGroup, indicating that we're waiting for 1 goroutine
	wg.Add(1)

	go func() {
		defer wg.Done() // Mark this goroutine as done when it completes

		fmt.Println("Go thread started, waiting...")
		time.Sleep(10 * time.Second)
		fmt.Println("calling Dart callback")
		sum(1000000, 10000000); // Call the Dart callback function
		fmt.Println("Dart callback called.")
	}()
}

//export start_fetch
func start_fetch() {
	startThread()

	// Wait for all goroutines in the WaitGroup to finish
	wg.Wait()

	fmt.Println("All goroutines finished.")
}

//export enforce_binding
func enforce_binding() {}

func main() {
	fmt.Printf("1 + 2 = %d\n", sum(1, 2));
	fmt.Printf("%s", fetchHeadersConcurrently());
}
