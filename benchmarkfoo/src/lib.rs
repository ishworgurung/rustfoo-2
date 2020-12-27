#![feature(core_intrinsics)]
#![feature(test)]
use std::intrinsics::powf32;

pub fn power(x: f32, y: f32) -> i32 {
    unsafe { powf32(x, y) as i32 }
}

#[test]
fn test_power() {
    assert_eq!(power(2 as f32, 2 as f32), 4);
}
