#!/bin/bash

emcc square.cpp -O3 -o public/square.js \
  -s "EXTRA_EXPORTED_RUNTIME_METHODS=['cwrap']" \
  -s "EXPORTED_FUNCTIONS=['_square']"
