# C++ / WebAssembly

This repo demonstrates compiling a C++ source file for execution in a web browser.

We use [Emscripten](https://emscripten.org) to compile the source and generate a WebAssembly file (`.wasm`) that can be loaded via JavaScript in most modern browsers.

Run `make build` to build the project and `make run` to expose a demo on http://localhost (these use the [emscripten/emsdk](https://hub.docker.com/r/emscripten/emsdk) and [nginx](https://hub.docker.com/_/nginx) Docker images).
