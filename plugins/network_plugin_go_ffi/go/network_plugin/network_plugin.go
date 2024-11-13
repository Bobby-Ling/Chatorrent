// network_plugin.go file
package main

/*
#if !_WIN32
#define __declspec(dllexport)
#endif

#include <stdlib.h>
#include "register_callback.h"
*/
import "C"
import (
	"fmt"
	"net/http"
	"sync"
	"time"
	"unsafe"
	"webrtc_plugin/sessionmgr"
)

// 使用`go build -buildmode=c-shared -o network_plugin.dll network_plugin.go`生成network_plugin.h
// 或在network_plugin_go_ffi/windows下运行make生成network_plugin.h
// 然后 **network_plugin_go_ffi目录下** `dart run ffigen --config ffigen.yaml`生成network_plugin_go_ffi_bindings_generated.dart
// 在example目录下运行flutter run等进行测试(可能需要改动main.dart)

// 在一个App实例中唯一存在
var globalMgr sessionmgr.SessionManager

const (
	Success     = 0
	ErrInit     = -1
	ErrSession  = -2
	ErrWait     = -3
	ErrSDP      = -4
	ErrOther    = -5
)

// 数据交换: 统一采用string类型交换json
// 内存管理: 输入参数由外部负责, 返回值由自己负责(gc)
// cgo能够接受的Api:

var placeholder_response = `{"error":{"code":0,"err_str":"OK"},"session_id":123,"data":"test_data"}`

// CreateSession for offer side to create a session
//export CreateSession
func CreateSession(SessionID C.int) *C.char {
	return C.CString(placeholder_response)
}
// Offer return offer BASE64
//export Offer
func Offer(SessionID C.int) *C.char {
	return C.CString(placeholder_response)
}
// JoinSession for answer side to join a session described by SDP
// 假定sdpBase64是\0结尾字符串
//export JoinSession
func JoinSession(SessionID C.int, sdpBase64 *C.char) *C.char {
	return C.CString(placeholder_response)
}
// Answer can be called after JoinSession
//export Answer
func Answer(SessionID C.int) *C.char {
	return C.CString(placeholder_response)
}
// ConfirmAnswer confirms a session description
// 假定sdpBase64是\0结尾字符串
//export ConfirmAnswer
func ConfirmAnswer(SessionID C.int, sdpBase64 *C.char) *C.char {
	return C.CString(placeholder_response)
}
// Send add data to send queue, it is not a obstructive function
//export Send
func Send(SessionID C.int, data *C.char, size C.int) *C.char {
	return C.CString(placeholder_response)
}
// Ready return a list of received messages and where are they from
// 计划使用json返回
//export Ready
func Ready() *C.char {
	return C.CString(placeholder_response)
}
// DropSession allow user to drop a session
// Warning: don't call DropSession easily, because it is very slow; not-used session will be shutdown automatically
//export DropSession
func DropSession(SessionID C.int) *C.char {
	return C.CString(placeholder_response)
}
// ReloadConfig will force SessionManager reload config from conf.json
// warning: it may not work immediately
//export ReloadConfig
func ReloadConfig() *C.char {
	return C.CString(placeholder_response)
}
// Discard a SessionManager
//export Discard
func Discard() *C.char {
	return C.CString(placeholder_response)
}

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

//export getHTTPHeaderFirstLine
func getHTTPHeaderFirstLine(cUrl *C.char) *C.char {
	// Convert the C string to Go string
	goUrl := C.GoString(cUrl)

	// Send a GET request to the provided URL
	resp, err := http.Get(goUrl)
	if err != nil {
		return C.CString("Error: Unable to fetch the page.")
	}
	defer resp.Body.Close()

	// Get the first line of the HTTP response (status line)
	statusLine := resp.Status

	// Convert Go string to C string
	cStatusLine := C.CString(statusLine)

	// Return the C string, needs to be freed by the caller in C
	return cStatusLine
}
// Free the memory allocated for the C string
//export freeCString
func freeCString(cstr *C.char) {
	C.free(unsafe.Pointer(cstr))
}

//export enforce_binding
func enforce_binding() {}

func main() {
	fmt.Printf("1 + 2 = %d\n", sum(1, 2));
	fmt.Printf("%s", fetchHeadersConcurrently());
}
