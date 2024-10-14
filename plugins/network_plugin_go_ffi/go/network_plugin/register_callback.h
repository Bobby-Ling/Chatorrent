#include <stdint.h>
#include <stdio.h>

// go不允许直接调用函数指针, 因此嵌入C来包装之
// 定义一个函数指针类型
typedef intptr_t (*sumDart)(intptr_t a, intptr_t b);

// 定义一个函数，该函数接受一个函数指针并调用它
// intptr_t register_callback(sumDart binop);
intptr_t register_callback(void* binop);

int add_c(int a, int b);