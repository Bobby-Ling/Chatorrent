// network_plugin.go file
package main

import (
	"C"
	"fmt"
	"time"
)

// 使用`go build -buildmode=c-shared -o network_plugin.dll network_plugin.go`生成network_plugin.h
// 或在network_plugin_go_ffi/windows下运行make生成network_plugin.h
// 然后 **network_plugin_go_ffi目录下** `dart run ffigen --config ffigen.yaml`生成network_plugin_go_ffi_bindings_generated.dart
// 在example目录下运行flutter run等进行测试(可能需要改动main.dart)

//export sum
func sum(a C.int, b C.int) C.int {
    return a + b;
}

//export sum_long_running
func sum_long_running(a C.int, b C.int) C.int {
	time.Sleep(5 * time.Second);
	return a + b;
}

//export enforce_binding
func enforce_binding() {}

func main() {
    fmt.Printf("1 + 2 = %d\n", sum(1, 2));
}
