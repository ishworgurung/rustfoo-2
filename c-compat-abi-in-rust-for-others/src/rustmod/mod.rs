//! FFI Deep Dive

use std::ffi::{CStr, CString};
use std::fmt::{Display, Error, Formatter};

use libc::{c_char, c_float, c_int};

/// The simplest possible example of exposing Rust functions via a C FFI.
#[no_mangle]
pub extern "C" fn add_in_rust(a: c_int, b: c_int) -> c_int {
    a + b
}

/// Take two strings in and concatentate them without mutating either.
///
/// This allocates a new string, which *must* be deallocated by calling the
/// `free_rust_string` type exposed in this module.
#[no_mangle]
pub extern "C" fn concat_strings(first: *const c_char, second: *const c_char) -> *mut c_char {
    let (first, second) = unsafe {
        // Start by making sure the two strings are not null pointers (since C
        // APIs don't actually give us any help with this).
        assert!(!first.is_null());
        assert!(!second.is_null());

        // Then use `CString::from_ptr` to let Rust's own built-in smarts about
        // how to convert from a pointer to a `c_char` do the conversion
        // correctly. These are *not* the same as Rust `String`s, after all!
        (CStr::from_ptr(first).to_bytes(), CStr::from_ptr(second).to_bytes())
    };

    CStr::from_bytes_with_nul(&[&first[0..first.len()], &second[0..second.len()], b"\0"].concat())
        .expect("should be possible to construct a new `CStr` from existing `CStr`s")
        .to_owned()
        .into_raw()
}

/// Free any string allocated by Rust.
#[no_mangle]
pub extern "C" fn free_rust_string(to_free: *mut c_char) {
    // If the pointer is already `null`, we're done here. (Don't double `free`!)
    if to_free.is_null() {
        return;
    }

    // If the pointer is not already null, we take ownership of it again with
    // `from_raw` and then immediately free it by way of the inherent `Drop`.
    unsafe {
        CString::from_raw(to_free);
    }
}

/// A simple struct which we can expose to a C API. Note that it is `#[repr(C)]`!
#[repr(C)]
pub struct Point {
    /// x position -- made `pub` to indicate that we're exposing it to C!
    pub x: f32,
    /// y position -- made `pub` to indicate that we're exposing it to C!
    pub y: f32,
}

impl Point {
    fn translate(&mut self, by_x: f32, by_y: f32) {
        self.x += by_x;
        self.y += by_y;
    }
}

/// Expose an interface for C API callers to call the `Point` impl.
#[no_mangle]
pub extern "C" fn point_translate(point: *mut Point, by_x: c_float, by_y: c_float) {
    let point = unsafe {
        assert!(!point.is_null());
        &mut *point
    };

    // Note that if this wasn't safe, because for some reason `c_float` did not
    // match `f32`, the compiler would tell us.
    point.translate(by_x, by_y);
}

/// A struct identical to `Point`, but which is *not* `#[repr(C)]`!
///
/// The layout here is intentionally left in Rust's own representation, and we
/// do *not* expose the internals in `e031.h`.
pub struct OpaquePoint {
    x: f32,
    y: f32,
}

impl OpaquePoint {
    fn translate(&mut self, by_x: f32, by_y: f32) {
        self.x += by_x;
        self.y += by_y;
    }
}

impl Display for OpaquePoint {
    fn fmt(&self, f: &mut Formatter) -> Result<(), Error> {
        write!(f, "`{}, {}`", self.x, self.y)
    }
}

/// Expose an interface for C API callers to call the `OpaquePoint` impl.
///
/// This implementation is *identical* to the implementation of the `Point`
/// above. The only difference is that the C side doesn't get access to the
/// internal structure of the type… which is we want.
#[no_mangle]
pub extern "C" fn opaque_point_translate(point: *mut OpaquePoint, by_x: c_float, by_y: c_float) {
    let point = unsafe {
        assert!(!point.is_null());
        &mut *point
    };

    // Note that if this wasn't safe, because for some reason `c_float` did not
    // match `f32`, the compiler would tell us.
    point.translate(by_x, by_y);
}

#[no_mangle]
pub extern "C" fn opaque_point_new(x: c_float, y: c_float) -> *mut OpaquePoint {
    Box::into_raw(Box::new(OpaquePoint { x, y }))
}

#[no_mangle]
pub extern "C" fn opaque_point_describe(point: *mut OpaquePoint) -> *mut c_char {
    let point = unsafe {
        assert!(!point.is_null());
        &mut *point
    };

    CString::new(format!("{}", point))
        .expect("always safe to get `CString` from `String`")
        .into_raw()
}

/// Safely drops the `OpaquePoint` instance.
#[no_mangle]
pub extern "C" fn opaque_point_free(point: *mut OpaquePoint) {
    if point.is_null() {
        return;
    }

    unsafe { Box::from_raw(point) };
}

/// Demonstrate unions! Combines an `enum` and a `union` into a `struct` that
/// acts mostly like a regular Rust `enum`.
pub mod unions {
    /// Builds an instance of `Either`, a manually-managed "tagged union" type.
    ///
    /// If you read the body, you'll notice that we're not *helped* in any way
    /// by Rust like we are with normal `enum` types.
    pub fn demo_union() {
        // Here, we construct the type correctly.
        let either = Either::<i32, Wrapped<u32>> {
            tag: Tag::Left,
            value: EitherValue { left: 42 },
        };

        // But notice that the compiler doesn't help us! Comment out the
        // following lines and see that it still *compiles* just fine... but is
        // very much *not* correct semantically: we have a `Left` tag with a
        // `right` value!

        // let bad_either = Either::<i32, Wrapped<u32>> {
        //     tag: Tag::Left,
        //     value: EitherValue { right: Wrapped(42) },
        // };

        unsafe {
            match either {
                Either {
                    tag: Tag::Left,
                    value: EitherValue { left },
                } => {
                    dbg!(left);
                },
                Either {
                    tag: Tag::Right,
                    value: EitherValue { right },
                } => {
                    dbg!(right);
                },
            }
        }
    }

    /// For tagging the type in `Either`. See the body of `demo_union`.
    #[derive(Clone, Copy)]
    pub enum Tag {
        Left,
        Right,
    }

    /// A simple type designed to demo unions. See the body of `demo_union`.
    #[derive(Debug, Copy, Clone)]
    pub struct Wrapped<T: Copy + Clone>(T);

    /// A union, to be used as the inner value for `Either`.
    pub union EitherValue<L: Copy, R: Copy> {
        left: L,
        right: R,
    }

    /// Uses an `enum` and a `union` to get close to a regular Rust enum.
    ///
    /// Roughly, because the compiler won't check you for exhaustiveness, or
    /// even make sure you're using the tag and value pair the way you should!
    pub struct Either<L: Copy, R: Copy> {
        pub tag: Tag,
        pub value: EitherValue<L, R>,
    }
}
