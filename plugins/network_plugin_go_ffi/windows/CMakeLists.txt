# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

# Project-level configuration.
set(PROJECT_NAME "network_plugin_go_ffi")
project(${PROJECT_NAME} LANGUAGES CXX)

# Invoke the build for native code shared with the other target platforms.
# This can be changed to accommodate different builds.
# add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/../src" "${CMAKE_CURRENT_BINARY_DIR}/shared")

# set(TARGET_NAME ${PROJECT_NAME}_${CMAKE_SYSTEM_NAME})
set(TARGET_NAME ${PROJECT_NAME})
set(TARGET_LIB_FILE ${CMAKE_CURRENT_LIST_DIR}/lib_${PROJECT_NAME}.dll)


# 动态获取 CMakeLists.txt 所在的当前目录
set(MAKEFILE_DIR ${CMAKE_CURRENT_LIST_DIR})

add_custom_command(
  OUTPUT ${TARGET_LIB_FILE}
  PRE_BUILD
  # 确保最新
  COMMAND
    ${CMAKE_COMMAND} -E remove ${TARGET_LIB_FILE}
  COMMAND
    ${CMAKE_COMMAND} -E echo "Building ${TARGET_NAME}..."
  COMMAND
    make -C ${MAKEFILE_DIR}
  # 更新时间戳
  COMMAND
    ${CMAKE_COMMAND} -E touch ${TARGET_LIB_FILE}
  COMMENT "Running make in ${CMAKE_SYSTEM_NAME}"
  VERBATIM
)

add_custom_target(${TARGET_NAME} ALL
  DEPENDS ${TARGET_LIB_FILE}
  DEPENDS ${MAKEFILE_DIR}/../go/network_plugin/network_plugin.go
)

# List of absolute paths to libraries that should be bundled with the plugin.
# This list could contain prebuilt libraries, or libraries created by an
# external build triggered from this build file.
# List of absolute paths to libraries that should be bundled with the plugin.
# This list could contain prebuilt libraries, or libraries created by an
# external build triggered from this build file.

# 在example/windows目录下的flutter/generated_plugins.cmake中作为${${ffi_plugin}_bundled_libraries使用,
set(ffi_plugin ${PROJECT_NAME})

# IMPORTED无法使用$<TARGET_FILE:TARGET_LIB>
# add_library(TARGET_LIB SHARED IMPORTED)

# set_target_properties(TARGET_LIB PROPERTIES
#   IMPORTED_LOCATION ${MAKEFILE_DIR}/${TARGET_LIB_FILE}
# )

message("${ffi_plugin}_bundled_libraries 依赖的:${TARGET_LIB_FILE}")
# set(network_plugin_go_ffi_bundled_libraries
set(${ffi_plugin}_bundled_libraries
  # Defined in ../src/CMakeLists.txt.
  # This can be changed to accommodate different builds.
  # ..\src\CMakeLists.txt中有:
  # add_library(network_plugin_go_ffi SHARED
  # "network_plugin_go_ffi.c"
  # )
  # 对于$<TARGET_FILE:network_plugin_go_ffi>:
  # network_plugin_go_ffi为TARGET_FILE, $<TARGET_FILE:network_plugin_go_ffi>为其.dll/.so路径
  # !Important
  # ${TARGET_LIB_FILE}依赖于add_custom_command定义的命令
  ${TARGET_LIB_FILE}
  # $<TARGET_FILE:TARGET_LIB>
  PARENT_SCOPE
)

