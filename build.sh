#!/bin/bash

mkdir -p public

emcc multiply.cpp -o public/index.html \
  --shell-file template.html \
  -s "EXTRA_EXPORTED_RUNTIME_METHODS=['ccall']"
