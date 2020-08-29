#!/usr/bin/env python

# Use the function implementations from shared library written in Rust.
# The Rust module produces a shared library with C ABI so it is available any language.
import os
from cffi import FFI

cdef = """
    int add_in_rust(int a, int b);
    
    char *concat_strings(char const *const first, char const *const second);
    
    typedef struct point { float x; float y; } point_t;
    
    void point_translate(point_t *point, float byX, float byY);
    
    typedef struct opaque_point opaque_point_t;
    
    opaque_point_t *opaque_point_new(float x, float y);

    void opaque_point_translate(opaque_point_t *point, float byX, float byY);
    
    char *opaque_point_describe(opaque_point_t *point);
    
    void opaque_point_free(opaque_point_t *point);
    
    void free_rust_string(char *to_free);
"""

shared_lib = os.path.join(
    os.path.dirname(os.path.abspath(__file__)),
    "../../target/release/libc_compat_abi_in_rust_for_others.so"
)

if __name__ == "__main__":
    ffi = FFI()
    ffi.cdef(cdef)
    rustlib = ffi.dlopen(shared_lib)

    added = rustlib.add_in_rust(4, 6)
    print(f"Rust has added the value. Result: {added}")

    greeting = ffi.new("char[]", b"Hello, ")
    name = ffi.new("char[]", b"Rustacean!")
    concatenated_str = ffi.string(rustlib.concat_strings(greeting, name))
    print(f"Rust has concatenated the value. Result: {concatenated_str}")

    point = ffi.new("point_t*", {'x': 0.4, 'y': 5.0})
    rustlib.point_translate(point, 4.8, 5.9)
    print(f"Rust has translated the point. Result: {round(point.x, 2)}, {round(point.y, 2)}")

    # Opaque pointers
    opaque_point = rustlib.opaque_point_new(-4.5, 2.5)
    # We can't use opaque_point.x or opaque_point.y as `opaque_point` is an opaque type
    # (struct opaque_point) whose fields are unknown to cffi.
    rustlib.opaque_point_translate(opaque_point, 8.8, -1.0)
    result = rustlib.opaque_point_describe(opaque_point)
    print(f"Rust has translated the opaque point. Result: {ffi.string(result)}")
    rustlib.free_rust_string(result)
    rustlib.opaque_point_free(opaque_point)
    print("Done")


