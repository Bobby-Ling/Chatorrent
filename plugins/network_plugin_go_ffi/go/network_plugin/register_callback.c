#include "register_callback.h"
// 定义一个函数，该函数接受一个函数指针并调用它
// intptr_t register_callback(sumDart binop) {

sumDart sum_dart_p;

intptr_t register_callback(void* binop) {
    sum_dart_p = (sumDart)binop;
    return 0;
}

// intptr_t invoke_callback() {
//     return sum_dart_p();
// }

int add_c(int a, int b) {
    return sum_dart_p(a, b);
}