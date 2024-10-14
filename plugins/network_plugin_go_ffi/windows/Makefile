GO_MODULE_NAME=network_plugin
LIB_NAME=lib_${GO_MODULE_NAME}_go_ffi
GO_SRC_DIR=../go/network_plugin

windows:
	cd ${GO_SRC_DIR} && \
	CGO_ENABLED=1 \
	GOOS=windows \
	GOARCH=amd64 \
	go build -trimpath -buildmode=c-shared -o ../../windows/${LIB_NAME}.dll .

	@echo building ${LIB_NAME}
	# mv ${LIB_NAME}.h ${GO_SRC_DIR}/${GO_MODULE_NAME}.h