#!/bin/bash

mkdir -p public
emcc multiply.cpp -o public/cpp-wasm-demo.js -s "EXTRA_EXPORTED_RUNTIME_METHODS=['ccall']" -O3
