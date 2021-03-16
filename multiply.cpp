#include <emscripten.h>

extern "C" {

EMSCRIPTEN_KEEPALIVE
int multiply(int arg1, int arg2) {
  return arg1 * arg2;
}

}
