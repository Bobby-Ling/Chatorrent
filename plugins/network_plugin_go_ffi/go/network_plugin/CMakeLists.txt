cmake_minimum_required(VERSION 3.17)
set(PROJECT_NAME "network_plugin_go_ffi")
project(${PROJECT_NAME} LANGUAGES C)

set(LIB_NAME "lib_${PROJECT_NAME}")

set(CMAKE_VERBOSE_MAKEFILE ON)

# Go相关源代码目录
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
set(
    ALL_DEPENDENCIES
    ${GO_SRCS}
    ${OTHER_DEP_FILES}
)

# 项目相关目录
set(PROJECT_DIR ${CMAKE_CURRENT_LIST_DIR}/../..)
set(OUT_DIR ${CMAKE_CURRENT_BINARY_DIR})

# 一个Platform需要同时支持多个Arch
if (CMAKE_SYSTEM_NAME STREQUAL "Windows")
    set(TARGET_LIB_FILE_NAME "lib_${PROJECT_NAME}.dll")
    set(GOOS "windows")
    set(GOARCH "amd64")
    set(ARCHs x86_64)
elseif(CMAKE_SYSTEM_NAME STREQUAL "Linux")
    set(TARGET_LIB_FILE_NAME "lib_${PROJECT_NAME}.so")
    set(GOOS "linux")
    set(GOARCH "amd64")
    set(ARCHs x86_64)
elseif (CMAKE_SYSTEM_NAME STREQUAL "Android")
    set(TARGET_LIB_FILE_NAME "lib_${PROJECT_NAME}.so")
    set(OUT_DIR ${PROJECT_DIR}/android/src/main/jniLibs)
    set(GOOS "android")
    # gradle会分开调用, 通过指定  "-DANDROID_ABI=arm64-v8a" "-DCMAKE_ANDROID_ARCH_ABI=arm64-v8a" 的方式
    # set(ARCHs arm arm64 x86 x86_64)
    set(ARCHs ${ANDROID_ABI})
    message("predefined ANDROID_ABI: ${ANDROID_ABI}")
    foreach(ARCH ${ARCHs})
        message("this time ARCH: ${ARCH} in ${ARCHs}")
        # if (ARCH STREQUAL "arm")
        if (ARCH STREQUAL "armeabi-v7a")
            list(APPEND ANDROID_ABIs "armeabi-v7a")
            list(APPEND GOARCHs "arm")
            list(APPEND GOARMs "7")
            list(APPEND CCs "$ENV{NDK_BIN}/armv7a-linux-androideabi21-clang")
        # elseif (ARCH STREQUAL "arm64")
        elseif (ARCH STREQUAL "arm64-v8a")
            list(APPEND ANDROID_ABIs "arm64-v8a")
            list(APPEND GOARCHs "arm64")
            list(APPEND GOARMs "8")  # 占位符
            list(APPEND CCs "$ENV{NDK_BIN}/aarch64-linux-android21-clang")
        elseif (ARCH STREQUAL "x86")
            list(APPEND ANDROID_ABIs "x86")
            list(APPEND GOARCHs "386")
            list(APPEND GOARMs "8")  # 占位符
            list(APPEND CCs "$ENV{NDK_BIN}/i686-linux-android21-clang")
        elseif (ARCH STREQUAL "x86_64")
            list(APPEND ANDROID_ABIs "x86_64")
            list(APPEND GOARCHs "amd64")
            list(APPEND GOARMs "8")  # 占位符
            list(APPEND CCs "$ENV{NDK_BIN}/x86_64-linux-android21-clang")
        endif()
    endforeach()
else()
    message(FATAL_ERROR "Unsupported platform: ${CMAKE_SYSTEM_NAME}")
endif()

message("Go envs: CGO_ENABLED=$ENV{CGO_ENABLED} GOOS=$ENV{GOOS} GOARCH=$ENV{GOARCH} \
        NDK_BIN=$ENV{NDK_BIN} CC=$ENV{CC} GOARM=$ENV{GOARM} ANDROID_ABI=$ENV{ANDROID_ABI}")

include(ExternalProject)

function(add_go_library target_name output_file go_arch go_arm cc)
    if(CMAKE_SYSTEM_NAME STREQUAL "Android")
        # 折中办法, 因为在build时output_file为空(linux/windows正常, 存疑)
        set(src_file_changed 0)

        message("output_file: ${output_file}")
        if(EXISTS ${output_file})
            file(TIMESTAMP ${output_file} output_timestamp)
            message("output_timestamp: ${output_timestamp}")
        else()
            set(src_file_changed 1)
            message("${output_file} not exists, rebuilding!")
        endif()

        foreach(src_file IN LISTS ALL_DEPENDENCIES)
            file(TIMESTAMP ${src_file} src_timestamp)
            message("src_file: ${src_file}")
            message("src_timestamp: ${src_timestamp}")

            if(${src_file} IS_NEWER_THAN ${output_file})
                set(src_file_changed 1)
            endif()
        endforeach()

        if(src_file_changed)
            message("rebuilding go!")
            execute_process(
                WORKING_DIRECTORY ${GO_SRC_DIR}
                COMMAND ${CMAKE_COMMAND} -E echo "Building Go library for ${CMAKE_SYSTEM_NAME} in ${GO_SRC_DIR}"
                COMMAND ${CMAKE_COMMAND} -E env CGO_ENABLED=1 GOOS=${GOOS} GOARCH=${go_arch} CC=${cc} GOARM=${go_arm} go build -trimpath -buildmode=c-shared -o ${output_file}
                COMMAND ${CMAKE_COMMAND} -E copy ${output_file} ${PROJECT_DIR}/test
                COMMAND ${CMAKE_COMMAND} -E copy ${output_file} ${PROJECT_DIR}/example/test
                COMMAND ${CMAKE_COMMAND} -E touch ${output_file}
                COMMENT "Building ${output_file}"
            )
            execute_process(
                WORKING_DIRECTORY ${PROJECT_DIR}
                COMMAND ${CMAKE_COMMAND} -E echo "Generating Dart bindings"
                COMMAND dart run ffigen --config ffigen.yaml
                COMMENT "Building ${output_file}"
                COMMENT "Generating Dart bindings"
            )
        else()
            message("src not changed!")
        endif()
    else()
        add_custom_command(
            OUTPUT ${output_file}
            WORKING_DIRECTORY ${GO_SRC_DIR}
            DEPENDS ${GO_SRCS} ${CGO_HEADERS} ${OTHER_DEP_FILES}
            COMMAND ${CMAKE_COMMAND} -E echo "Building Go library for ${CMAKE_SYSTEM_NAME} in ${GO_SRC_DIR}"
            COMMAND ${CMAKE_COMMAND} -E env CGO_ENABLED=1 GOOS=${GOOS} GOARCH=${go_arch} CC=${cc} GOARM=${go_arm} go build -trimpath -buildmode=c-shared -o ${output_file}
            COMMAND ${CMAKE_COMMAND} -E copy ${output_file} ${PROJECT_DIR}/test
            COMMAND ${CMAKE_COMMAND} -E copy ${output_file} ${PROJECT_DIR}/example/test
            COMMAND ${CMAKE_COMMAND} -E touch ${output_file}
            COMMENT "Building ${output_file}"
            VERBATIM
        )
        add_custom_target(${target_name} ALL DEPENDS ${output_file})
        add_custom_command(
            TARGET ${target_name}
            POST_BUILD
            WORKING_DIRECTORY ${PROJECT_DIR}
            COMMAND dart run ffigen --config ffigen.yaml
            COMMAND ${CMAKE_COMMAND} -E echo "Generating Dart bindings"
            COMMENT "Generating Dart bindings"
        )

        # ExternalProject_Add(
        #     ${target_name}
        #     BUILD_BYPRODUCTS ${output_file}
        #     WORKING_DIRECTORY ${GO_SRC_DIR}
        #     # DEPENDS ${GO_SRCS} ${CGO_HEADERS} ${OTHER_DEP_FILES}
        #     # PREFIX ${CMAKE_CURRENT_BINARY_DIR}/${target_name}
        #     SOURCE_DIR ${GO_SRC_DIR}
        #     # BUILD_COMMAND
        #     CONFIGURE_COMMAND
        #         ${CMAKE_COMMAND} -E env CGO_ENABLED=1 GOOS=${GOOS} GOARCH=${go_arch} CC=${cc} GOARM=${go_arm} go build -trimpath -buildmode=c-shared -o ${output_file}
        #     BUILD_IN_SOURCE 1
        #     INSTALL_COMMAND
        #         ${CMAKE_COMMAND} -E copy ${output_file} ${PROJECT_DIR}/test &&
        #         ${CMAKE_COMMAND} -E copy ${output_file} ${PROJECT_DIR}/example/test &&
        #         ${CMAKE_COMMAND} -E touch ${output_file}
        # )

        endif()
    set(TARGET_LIB_NAME ${target_name}_library)
    add_library(${TARGET_LIB_NAME} SHARED IMPORTED)
    set_target_properties(
        ${TARGET_LIB_NAME}
        PROPERTIES IMPORTED_LOCATION ${output_file}
        PUBLIC_HEADER ${CGO_HEADERS}
    )
    add_dependencies(${TARGET_LIB_NAME} ${target_name})
endfunction()

set(ffi_plugin ${PROJECT_NAME})
# network_plugin_go_ffi_bundled_libraries本身需要导出
set(EXPORT_LIB_NAME ${ffi_plugin}_bundled_libraries CACHE STRING "network_plugin_go_ffi_bundled_libraries" FORCE)
# 确保清零, 在否则在多次运行期间值会保留
set(${EXPORT_LIB_NAME} "" CACHE STRING "全局可见的${TARGET_LIB_FILE}" FORCE)
set(TARGET_NAMEs "" CACHE STRING "" FORCE)

# 最终每个Arch会有一个目标

message("All ARCHS config: ${ARCHs} ${ANDROID_ABIs} ${GOARCHs} ${GOARMs} ${CCs}")

if (CMAKE_SYSTEM_NAME STREQUAL "Windows" OR CMAKE_SYSTEM_NAME STREQUAL "Linux")
    # ARCHs是LIST变量名
    foreach(ARCH IN LISTS ARCHs)
        set(TARGET_NAME ${PROJECT_NAME}_${ARCH})
        set(TARGET_LIB_FILE ${OUT_DIR}/${TARGET_LIB_FILE_NAME})

        message("TARGET_LIB_FILE: ${TARGET_LIB_FILE} ${TARGET_NAME}")
        message("ARCH:[${ARCH}]\t ANDROID_ABI:[${ANDROID_ABI}]\t GOARCH:[${GOARCH}]\t GOARM:[${GOARM}]\t CC:[${CC}]")
        # 空变量作为占位符
        add_go_library(${TARGET_NAME} ${TARGET_LIB_FILE} "" "" "")
        # 之后network_plugin_go_ffi_bundled_libraries作为LIST
        list(APPEND ${EXPORT_LIB_NAME} ${TARGET_LIB_FILE})
        list(APPEND TARGET_NAMEs ${TARGET_NAME})
    endforeach()
elseif (CMAKE_SYSTEM_NAME STREQUAL "Android")
    # 3.17
    foreach(ARCH ANDROID_ABI GOARCH GOARM CC IN ZIP_LISTS ARCHs ANDROID_ABIs GOARCHs GOARMs CCs)
        set(TARGET_NAME ${PROJECT_NAME}_${ARCH})
        set(TARGET_LIB_FILE ${OUT_DIR}/${ANDROID_ABI}/${TARGET_LIB_FILE_NAME})

        message("TARGET_LIB_FILE: ${TARGET_LIB_FILE} ${TARGET_NAME}")
        message("ARCH:[${ARCH}]\t ANDROID_ABI:[${ANDROID_ABI}]\t GOARCH:[${GOARCH}]\t GOARM:[${GOARM}]\t CC:[${CC}]")
        add_go_library(${TARGET_NAME} ${TARGET_LIB_FILE} ${GOARCH} ${GOARM} ${CC})
        # 之后network_plugin_go_ffi_bundled_libraries作为LIST
        list(APPEND ${EXPORT_LIB_NAME} ${TARGET_LIB_FILE})
        list(APPEND TARGET_NAMEs ${TARGET_NAME})
    endforeach()
endif()

# ${${EXPORT_LIB_NAME}}是值
set(${EXPORT_LIB_NAME} ${${EXPORT_LIB_NAME}} CACHE STRING "全局可见的${TARGET_LIB_FILE}" FORCE)

message("TARGET_NAMEs: ${TARGET_NAMEs}")
# 修改时要加上FORCE, 否则不生效
set(TARGET_NAMEs ${TARGET_NAMEs} CACHE STRING "全局可见的TARGET_NAME" FORCE)

foreach(arch_lib ${${EXPORT_LIB_NAME}})
    message(NOTICE "EXPORT_LIB_NAME: ${arch_lib}")
endforeach()

message("CMakeLists.txt in go/network_plugin configured ok!")

# 暴露的变量
# set(ffi_plugin ${PROJECT_NAME})
# # CACHE set使得${TARGET_LIB_FILE}在全局目录可见(否则只能传递一层目录且在本文件会为空)
# set(
#     TARGET_LIB_FILE ${TARGET_LIB_FILE}
#     CACHE STRING "TARGET_LIB_FILE在全局目录可见"
# )
# set(${ffi_plugin}_bundled_libraries
#     # Defined in ../src/CMakeLists.txt.
#     # This can be changed to accommodate different builds.
#     # ..\src\CMakeLists.txt中有:
#     # add_library(network_plugin_go_ffi SHARED
#     # "network_plugin_go_ffi.c"
#     # )
#     ${TARGET_LIB_FILE}
#     CACHE STRING "全局可见的${ffi_plugin}_bundled_libraries"
# )