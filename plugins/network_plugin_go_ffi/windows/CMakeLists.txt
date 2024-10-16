# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

# Project-level configuration.
set(PROJECT_NAME "network_plugin_go_ffi")
project(${PROJECT_NAME})

add_subdirectory(
  "${CMAKE_CURRENT_SOURCE_DIR}/../go"
  # 避免When specifying an out-of-tree source a binary directory must be explicitly specified.
  # 手动指定binary_dir
  "${CMAKE_CURRENT_BINARY_DIR}/lib"
)
