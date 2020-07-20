BINARY_NAME := swift-wasm

WWW/dist/swiftwasm.wasm: build
	mkdir -p WWW/dist
	cp ./.build/debug/$(BINARY_NAME) $@

.PHONY: build
build:
	swift build -c release --triple wasm32-unknown-wasi
