.PHONY: build
build:
	@mkdir -p build
	docker run --rm -v $(PWD):/src emscripten/emsdk \
      emcc multiply.cpp -o build/index.html \
        --shell-file template.html \
        -s "EXTRA_EXPORTED_RUNTIME_METHODS=['ccall']" \
        -s NO_EXIT_RUNTIME

.PHONY: run
run:
	docker run --rm -v $(PWD)/build:/usr/share/nginx/html -p 80:80 nginx:latest
