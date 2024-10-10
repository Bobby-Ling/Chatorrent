GO_MODULE_NAME=network_plugin
LIB_NAME=lib_${GO_MODULE_NAME}_go_ffi
GO_SRC_DIR=../go/network_plugin

linux:
	CGO_ENABLED=1 \
	GOOS=linux \
	GOARCH=amd64 \
	go build -trimpath -buildmode=c-shared -o ${LIB_NAME}.so ../go/network_plugin/network_plugin.go

	mv ${LIB_NAME}.h ${GO_SRC_DIR}/${GO_MODULE_NAME}.h