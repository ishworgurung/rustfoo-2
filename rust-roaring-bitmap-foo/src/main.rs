use croaring::Bitmap;
use std::time::SystemTime;

fn main() {
    let r1 = 1000..100_000_000_0;
    let r2 = 0..100_000_000_0;

    let mut rb1 = Bitmap::create();
    rb1.add_range(r1.clone());

    let mut rb2 = Bitmap::create();
    for x in r2.clone().rev() {
        rb2.add(x as u32);
    }

    rb1.run_optimize();
    rb2.run_optimize();

    // let s = Instant::now();
    let s = SystemTime::now();

    let new_rb = rb1.and(&rb2).to_vec();
    println!("rb1: {:?}", rb1.get_serialized_size_in_bytes());
    println!("rb2: {:?}", rb2.get_serialized_size_in_bytes());
    // println!("new_rb: {:?}", new_rb.get_serialized_size_in_bytes());

    println!("l={:?}", new_rb.len());
    println!("e={:?}", s.elapsed().unwrap_or_default());

    /*
    let mut rb2 = Bitmap::create();
    rb2.add(3);
    rb2.add(4);
    rb2.add(1000);
    rb2.add(33);
    rb2.add(44);
    rb2.add(10000);
    let modified2 = rb2.run_optimize();
    if modified2 {
        println!("rb2 was modified: {}", modified2);
    }


    let mut rb3 = Bitmap::create();

    assert_eq!(rb1.cardinality(), 7);
    assert!(rb1.contains(3));

    rb1.and_inplace(&rb2);
    rb3.add(5);
    rb3.or_inplace(&rb1);

    let mut rb4 = Bitmap::fast_or(&[&rb1, &rb2, &rb3]);

    rb1.and_inplace(&rb2);
    println!("{:?}", rb1);

    rb3.add(5);
    rb3.or_inplace(&rb1);

    println!("{:?}", rb1);

    rb3.add(5);
    rb3.or_inplace(&rb1);

    println!("{:?}", rb3.to_vec());
    println!("{:?}", rb3);
    println!("{:?}", rb4);

    rb4 = Bitmap::fast_or(&[&rb1, &rb2, &rb3]);

    println!("{:?}", rb4);}

    */
}