cmake_minimum_required(VERSION 3.10)
set(PROJECT_NAME "network_plugin_go_ffi")
project(${PROJECT_NAME} LANGUAGES C)

set(TARGET_NAME ${PROJECT_NAME})
# lib_network_plugin_go_ffi
set(LIB_NAME "lib_${TARGET_NAME}")

# 跨平台设置环境变量
set(ENV{CGO_ENABLED} "1")
if (CMAKE_SYSTEM_NAME STREQUAL "Windows")
    set(TARGET_LIB_FILE_NAME "lib_${TARGET_NAME}.dll")
    set(ENV{GOOS} "windows")
    set(ENV{GOARCH} "amd64")
elseif (CMAKE_SYSTEM_NAME STREQUAL "Linux")
    set(TARGET_LIB_FILE_NAME "lib_${TARGET_NAME}.so")
    set(ENV{GOOS} "linux")
    set(ENV{GOARCH} "amd64")
else()
    message(FATAL_ERROR "Unsupported platform: ${CMAKE_SYSTEM_NAME}")
endif()

set(PROJECT_DIR "${CMAKE_CURRENT_LIST_DIR}/../../")
set(TARGET_LIB_FILE "${CMAKE_CURRENT_BINARY_DIR}/${TARGET_LIB_FILE_NAME}")
set(GO_SRC_DIR ${CMAKE_CURRENT_LIST_DIR})
set(GO_SRCS
    ${GO_SRC_DIR}/network_plugin.go
)
set(
    CGO_HEADERS
    ${GO_SRC_DIR}/network_plugin.h
)
set(
    OTHER_DEP_FILES
    ${GO_SRC_DIR}/register_callback.c
    ${GO_SRC_DIR}/register_callback.h
)

message("in ${CMAKE_CURRENT_SOURCE_DIR}")
message("CMAKE_CURRENT_BINARY_DIR: ${CMAKE_CURRENT_BINARY_DIR}")
message("TARGET_LIB_FILE: ${TARGET_LIB_FILE}")

add_custom_command(
    OUTPUT ${TARGET_LIB_FILE}
    # go build只能在${GO_SRC_DIR}运行
    WORKING_DIRECTORY ${GO_SRC_DIR}
    # 文件级别的DEPENDS会检测改动, target级别的DEPENDS会保证target最新
    DEPENDS
        ${GO_SRCS} ${CGO_HEADERS} ${OTHER_DEP_FILES}
    COMMAND
        ${CMAKE_COMMAND} -E echo "Building Go library for ${CMAKE_SYSTEM_NAME} in ${GO_SRC_DIR}"
    COMMAND
        ${CMAKE_COMMAND} -E echo "Go envs: CGO_ENABLED=$ENV{CGO_ENABLED} GOOS=$ENV{GOOS} GOARCH=$ENV{GOARCH} "
    # -trimpath会移除编译路径信息
    COMMAND
        go build -trimpath -buildmode=c-shared -o ${TARGET_LIB_FILE}
    COMMAND
        ${CMAKE_COMMAND} -E copy ${TARGET_LIB_FILE} ${PROJECT_DIR}/test
    COMMAND
        ${CMAKE_COMMAND} -E copy ${TARGET_LIB_FILE} ${PROJECT_DIR}/example/test
    COMMAND
        ${CMAKE_COMMAND} -E touch ${TARGET_LIB_FILE}
    COMMENT "Building ${TARGET_LIB_FILE}"
    VERBATIM
)

# 与add_custom_command的OUTPUT关联
add_custom_target(${TARGET_NAME} ALL
    DEPENDS ${TARGET_LIB_FILE}
)

# 生成Dart绑定
add_custom_command(
    TARGET ${TARGET_NAME}
    POST_BUILD
    WORKING_DIRECTORY ${PROJECT_DIR}
    DEPENDS ${TARGET_LIB_FILE}
    COMMAND
        dart run ffigen --config ffigen.yaml
    COMMAND
        ${CMAKE_COMMAND} -E echo "Generating Dart bindings"
    COMMENT "Generating Dart bindings"
)


add_library(${LIB_NAME} SHARED IMPORTED)

set_target_properties(
    ${LIB_NAME} PROPERTIES
    IMPORTED_LOCATION ${CMAKE_CURRENT_LIST_DIR}/${TARGET_LIB_FILE_NAME}
    PUBLIC_HEADER ${CMAKE_CURRENT_LIST_DIR}/${CGO_HEADERS}
)

# 暴露的变量
set(ffi_plugin ${TARGET_NAME})
# CACHE set使得${TARGET_LIB_FILE}在全局目录可见(否则只能传递一层目录且在本文件会为空)
set(
    TARGET_LIB_FILE ${TARGET_LIB_FILE}
    CACHE STRING "TARGET_LIB_FILE在全局目录可见"
)
set(${ffi_plugin}_bundled_libraries
    # Defined in ../src/CMakeLists.txt.
    # This can be changed to accommodate different builds.
    # ..\src\CMakeLists.txt中有:
    # add_library(network_plugin_go_ffi SHARED
    # "network_plugin_go_ffi.c"
    # )
    ${TARGET_LIB_FILE}
    CACHE STRING "全局可见的${ffi_plugin}_bundled_libraries"
)
