package main

/*
#include "cgo.h"
*/
import "C"
import "fmt"

func main() {
    fmt.Println(C.add(1, 2))
}
