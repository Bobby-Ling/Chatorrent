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

set(CMAKE_SYSTEM_NAME Android)
set(TARGET_NAME network_plugin_go_ffi_${CMAKE_SYSTEM_NAME})

add_custom_target(${TARGET_NAME})

# 动态获取 CMakeLists.txt 所在的当前目录
set(MAKEFILE_DIR ${CMAKE_CURRENT_LIST_DIR})

add_custom_command(
  TARGET ${TARGET_NAME}
  PRE_BUILD
  COMMAND make -C ${MAKEFILE_DIR}
  COMMENT "Running make in ${CMAKE_SYSTEM_NAME}"
)


# List of absolute paths to libraries that should be bundled with the plugin.
# This list could contain prebuilt libraries, or libraries created by an
# external build triggered from this build file.
# List of absolute paths to libraries that should be bundled with the plugin.
# This list could contain prebuilt libraries, or libraries created by an
# external build triggered from this build file.
set(network_plugin_go_ffi_bundled_libraries
  # Defined in ../src/CMakeLists.txt.
  # This can be changed to accommodate different builds.
  # $<TARGET_FILE:network_plugin_go_ffi>
  ${CMAKE_CURRENT_LIST_DIR}/lib_network_plugin_go_ffi.so
  PARENT_SCOPE
)

