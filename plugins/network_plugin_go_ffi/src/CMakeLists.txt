# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)


# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# 现在这个文件实际上不会被用到(已经被windows linux等目录的CMakeLists.txt取消包含)

project(network_plugin_go_ffi_library VERSION 0.0.1 LANGUAGES C)

add_library(network_plugin_go_ffi SHARED
  "network_plugin_go_ffi.c"
)

# 指定 network_plugin.dll 的路径
# 假设 network_plugin.dll 位于指定路径下
set(NETWORK_PLUGIN_PATH "${CMAKE_CURRENT_LIST_DIR}/../../network_plugin_go_ffi/go/network_plugin")
# windows下要用.lib静态导入dll
set(NETWORK_PLUGIN_LIB_PATH "${CMAKE_CURRENT_LIST_DIR}/../../network_plugin_go_ffi/go/network_plugin/network_plugin.lib")

# 指定头文件路径
include_directories(${NETWORK_PLUGIN_PATH})

# 指定 MinGW 库路径(network_plugin为静态库时需要)
set(MINGW_LIB_PATH "C:/msys64/mingw64/lib")
set(MINGW_LIB_PATH1 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/12.2.0/")
target_link_libraries(network_plugin_go_ffi PRIVATE "${MINGW_LIB_PATH}/libmingwex.a" "${MINGW_LIB_PATH1}/libgcc.a")

# 链接外部的动态库（network_plugin.dll）
target_link_libraries(network_plugin_go_ffi PRIVATE "${NETWORK_PLUGIN_LIB_PATH}")

target_compile_definitions(network_plugin_go_ffi PUBLIC EXPORT_SYMBOLS)


set_target_properties(network_plugin_go_ffi PROPERTIES
  PUBLIC_HEADER network_plugin_go_ffi.h
  OUTPUT_NAME "network_plugin_go_ffi"
)

target_compile_definitions(network_plugin_go_ffi PUBLIC DART_SHARED_LIB)
