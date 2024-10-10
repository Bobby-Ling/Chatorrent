GO_MODULE_NAME=network_plugin
LIB_NAME=lib_${GO_MODULE_NAME}_go_ffi
GO_SRC_DIR=../go/network_plugin

ios-x86_64-sim:
	GOARCH=amd64 \
	SDK=iphonesimulator \
	LIB_NAME=${LIB_NAME} \
	./build_ios.sh

ios-arm64-sim:
	GOARCH=arm64 \
	SDK=iphonesimulator \
	LIB_NAME=${LIB_NAME} \
	./build_ios.sh

ios-arm64:
	GOARCH=arm64 \
	SDK=iphoneos \
	LIB_NAME=${LIB_NAME} \
	./build_ios.sh

ios: ios-x86_64-sim ios-arm64-sim ios-arm64
	lipo \
    -create \
    ${LIB_NAME}_arm64_iphonesimulator.a \
    ${LIB_NAME}_amd64_iphonesimulator.a \
    -output ${LIB_NAME}_iphonesimulator.a
	rm ${LIB_NAME}_arm64_iphonesimulator.*
	rm ${LIB_NAME}_amd64_iphonesimulator.*

	mkdir -p ios-arm64
	mkdir -p ios-simulator
	mv ./${LIB_NAME}_arm64_iphoneos.a ./ios-arm64/${LIB_NAME}.a
	cp ./${LIB_NAME}_arm64_iphoneos.h ./ios-arm64/${LIB_NAME}.h
	mv ./${LIB_NAME}_iphonesimulator.a ./ios-simulator/${LIB_NAME}.a
	mv ./${LIB_NAME}_arm64_iphoneos.h ./ios-simulator/${LIB_NAME}.h

	xcodebuild -create-xcframework \
			-output ${LIB_NAME}.xcframework \
			-library ios-arm64/${LIB_NAME}.a \
			-headers ios-arm64/${LIB_NAME}.h \
			-library ios-simulator/${LIB_NAME}.a \
			-headers ios-simulator/${LIB_NAME}.h
	rm -rf ios-arm64
	rm -rf ios-arm64-simulator
	rm -rf ios-simulator
	rm -rf ../ios/${LIB_NAME}.xcframework
	mv ${LIB_NAME}.xcframework ../ios/
