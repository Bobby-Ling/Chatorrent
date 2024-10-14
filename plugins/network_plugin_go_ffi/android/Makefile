ANDROID_OUT=../android/src/main/jniLibs
# 在环境变量中设置ANDROID_HOME和NDK_BIN(只能右斜杠)
# ANDROID_HOME=$(HOME)/Library/Android/sdk
# NDK_BIN=$(ANDROID_HOME)/ndk/27.0.12077973/toolchains/llvm/prebuilt/windows-x86_64/bin
GO_MODULE_NAME=network_plugin
LIB_NAME=lib_${GO_MODULE_NAME}_go_ffi
GO_SRC_DIR=../go/network_plugin

defalut: android

android-armv7a:
	CGO_ENABLED=1 \
	GOOS=android \
	GOARCH=arm \
	GOARM=7 \
	CC=$(NDK_BIN)/armv7a-linux-androideabi21-clang \
	go build -buildmode=c-shared -o $(ANDROID_OUT)/armeabi-v7a/${LIB_NAME}.so ${GO_SRC_DIR}

android-arm64:
	CGO_ENABLED=1 \
	GOOS=android \
	GOARCH=arm64 \
	CC=$(NDK_BIN)/aarch64-linux-android21-clang \
	go build -buildmode=c-shared -o $(ANDROID_OUT)/arm64-v8a/${LIB_NAME}.so ${GO_SRC_DIR}

android-x86:
	CGO_ENABLED=1 \
	GOOS=android \
	GOARCH=386 \
	CC=$(NDK_BIN)/i686-linux-android21-clang \
	go build -buildmode=c-shared -o $(ANDROID_OUT)/x86/${LIB_NAME}.so ${GO_SRC_DIR}

android-x86_64:
	CGO_ENABLED=1 \
	GOOS=android \
	GOARCH=amd64 \
	CC=$(NDK_BIN)/x86_64-linux-android21-clang \
	go build -buildmode=c-shared -o $(ANDROID_OUT)/x86_64/${LIB_NAME}.so ${GO_SRC_DIR}

install-header:
	cp $(ANDROID_OUT)/x86_64/${LIB_NAME}.h ${GO_SRC_DIR}/${GO_MODULE_NAME}.h

android: android-armv7a android-arm64 android-x86 android-x86_64 install-header
