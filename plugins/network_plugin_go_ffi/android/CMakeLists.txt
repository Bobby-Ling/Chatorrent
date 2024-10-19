# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

# Project-level configuration.
set(PROJECT_NAME "network_plugin_go_ffi")
project(${PROJECT_NAME})

# 默认情况下gradle会将{PLUGIN_PROJECT_ROOT}/android/src/main/jniLibs/{ABI_VERSION}/*.so加入apk
add_subdirectory(
  "${CMAKE_CURRENT_SOURCE_DIR}/../go"
  # 避免When specifying an out-of-tree source a binary directory must be explicitly specified.
  # 手动指定binary_dir
  "${CMAKE_CURRENT_BINARY_DIR}/lib"
)

# "C:\\Users\\bobby\\DATA\\DevEnvs\\AndroidSDK\\cmake\\3.22.1\\bin\\cmake.exe" ^
#   "-HC:\\Users\\bobby\\DATA\\Git\\MyProjects\\chatorrent\\plugins\\network_plugin_go_ffi\\android" ^
#   "-DCMAKE_SYSTEM_NAME=Android" ^
#   "-DCMAKE_EXPORT_COMPILE_COMMANDS=ON" ^
#   "-DCMAKE_SYSTEM_VERSION=21" ^
#   "-DANDROID_PLATFORM=android-21" ^
#   "-DANDROID_ABI=arm64-v8a" ^
#   "-DCMAKE_ANDROID_ARCH_ABI=arm64-v8a" ^
#   "-DANDROID_NDK=C:\\Users\\bobby\\DATA\\DevEnvs\\AndroidSDK\\ndk\\25.1.8937393" ^
#   "-DCMAKE_ANDROID_NDK=C:\\Users\\bobby\\DATA\\DevEnvs\\AndroidSDK\\ndk\\25.1.8937393" ^
#   "-DCMAKE_TOOLCHAIN_FILE=C:\\Users\\bobby\\DATA\\DevEnvs\\AndroidSDK\\ndk\\25.1.8937393\\build\\cmake\\android.toolchain.cmake" ^
#   "-DCMAKE_MAKE_PROGRAM=C:\\Users\\bobby\\DATA\\DevEnvs\\AndroidSDK\\cmake\\3.22.1\\bin\\ninja.exe" ^
#   "-DCMAKE_LIBRARY_OUTPUT_DIRECTORY=C:\\Users\\bobby\\DATA\\Git\\MyProjects\\chatorrent\\build\\network_plugin_go_ffi\\intermediates\\cxx\\RelWithDebInfo\\2b3tn3a6\\obj\\arm64-v8a" ^
#   "-DCMAKE_RUNTIME_OUTPUT_DIRECTORY=C:\\Users\\bobby\\DATA\\Git\\MyProjects\\chatorrent\\build\\network_plugin_go_ffi\\intermediates\\cxx\\RelWithDebInfo\\2b3tn3a6\\obj\\arm64-v8a" ^
#   "-DCMAKE_BUILD_TYPE=RelWithDebInfo" ^
#   "-BC:\\Users\\bobby\\DATA\\Git\\MyProjects\\chatorrent\\plugins\\network_plugin_go_ffi\\android\\.cxx\\RelWithDebInfo\\2b3tn3a6\\arm64-v8a" ^
#   -GNinja

message("network_plugin_go_ffi_bundled_libraries: ${network_plugin_go_ffi_bundled_libraries}")
message("TARGET_NAMEs: ${TARGET_NAMEs}")
message("EXPORT_LIB_NAME: ${${EXPORT_LIB_NAME}}")

# foreach(lib_name lib IN ZIP_LISTS TARGET_NAMEs network_plugin_go_ffi_bundled_libraries)
#     # 创建导入库
#     message("lib_name: ${lib_name}")
#     message("lib: ${lib}")
#     add_library(${lib_name}_imported SHARED IMPORTED)
#     set_target_properties(
#       ${lib_name}_imported
#       PROPERTIES IMPORTED_LOCATION ${lib}
#     )
#     # 将库名添加到列表中
#     list(APPEND LIBS ${lib_name})
# endforeach()