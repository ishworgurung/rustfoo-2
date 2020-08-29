#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

/**
 * A struct identical to `Point`, but which is *not* `#[repr(C)]`!
 *
 * The layout here is intentionally left in Rust's own representation, and we
 * do *not* expose the internals in `e031.h`.
 */
typedef struct OpaquePoint OpaquePoint;

/**
 * A simple struct which we can expose to a C API. Note that it is `#[repr(C)]`!
 */
typedef struct {
  /**
   * x position -- made `pub` to indicate that we're exposing it to C!
   */
  float x;
  /**
   * y position -- made `pub` to indicate that we're exposing it to C!
   */
  float y;
} Point;

/**
 * The simplest possible example of exposing Rust functions via a C FFI.
 */
int add_in_rust(int a, int b);

/**
 * Take two strings in and concatentate them without mutating either.
 *
 * This allocates a new string, which *must* be deallocated by calling the
 * `free_rust_string` type exposed in this module.
 */
char *concat_strings(const char *first, const char *second);

/**
 * Free any string allocated by Rust.
 */
void free_rust_string(char *to_free);

char *opaque_point_describe(OpaquePoint *point);

/**
 * Safely drops the `OpaquePoint` instance.
 */
void opaque_point_free(OpaquePoint *point);

OpaquePoint *opaque_point_new(float x, float y);

/**
 * Expose an interface for C API callers to call the `OpaquePoint` impl.
 *
 * This implementation is *identical* to the implementation of the `Point`
 * above. The only difference is that the C side doesn't get access to the
 * internal structure of the type… which is we want.
 */
void opaque_point_translate(OpaquePoint *point, float by_x, float by_y);

/**
 * Expose an interface for C API callers to call the `Point` impl.
 */
void point_translate(Point *point, float by_x, float by_y);
