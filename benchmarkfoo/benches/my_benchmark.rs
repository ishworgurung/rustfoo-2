#![feature(core_intrinsics)]
use benchmarkfoo::power;
use criterion::{black_box, criterion_group, criterion_main, Criterion};

fn bench_power(c: &mut Criterion) {
    c.bench_function("bench_power", |b| {
        b.iter(|| unsafe {
            let x = 5;
            let y = &x as *const i32;
            let n = core::intrinsics::volatile_load(y);
            (0..n).fold(0, |acc, v| power(acc as f32, v as f32) as i32)
        })
    });
}

criterion_group!(benches, bench_power);
criterion_main!(benches);
