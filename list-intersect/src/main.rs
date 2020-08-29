use std::alloc::System;

#[global_allocator]
static GLOBAL: System = System;

use std::time::Instant;
use std::collections::BTreeSet;

fn main() {
    let r1:u32 = 1000;
    let r2:u32 = 100_000_000;
    let mut l1: BTreeSet<_> = BTreeSet::new();
    let mut l2: BTreeSet<_>= BTreeSet::new();

    // let s = Instant::now();
    // for x1 in 0..r1 {
    //     l1.insert(x1);
    // }
    // println!("e1={:?}", s.elapsed());
    //
    // let s = Instant::now();
    // for x2 in (0..r2).rev() {
    //     l2.insert(x2);
    // }
    l1.extend((r1..r2).into_iter());
    l2.extend((r1..r2).into_iter().rev());
    // println!("e2={:?}", s.elapsed());
    // intersect1(&l1, &l2);
    let s = Instant::now();
    let l: BTreeSet<_> = l1.intersection(&l2).collect();
    println!("e={:?}", s.elapsed());
    println!("l={:?}", l.len());
}

// fn intersect1(i1: &BTreeSet<u32>, i2: &BTreeSet<u32>) {
//     let s = Instant::now();
//     let l: BTreeSet<_> = i1.intersection(&i2).collect();
//     println!("e={:?}", s.elapsed());
//     println!("l={:?}", l.len());
// }