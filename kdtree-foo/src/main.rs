use kdtree::KdTree;
use kdtree::ErrorKind;
use kdtree::distance::squared_euclidean;

fn main() {
    let a: ([f64; 2], u8) = ([0f64, 0f64], 0);
    let b: ([f64; 2], u8) = ([1f64, 1f64], 1);
    let c: ([f64; 2], u8) = ([2f64, 2f64], 2);
    let d: ([f64; 2], u8) = ([3f64, 3f64], 3);

    let dimensions = 2;
    let mut kdtree = KdTree::new(dimensions);
    kdtree.add(&a.0, a.1).unwrap();
    kdtree.add(&b.0, b.1).unwrap();
    kdtree.add(&c.0, c.1).unwrap();
    kdtree.add(&d.0, d.1).unwrap();
    kdtree.remove();

    assert_eq!(kdtree.size(), 4);

    assert_eq!(
        kdtree.nearest(&a.0, 0, &squared_euclidean).unwrap(),
        vec![]
    );

    assert_eq!(
        kdtree.nearest(&a.0, 1, &squared_euclidean).unwrap(),
        vec![(0f64, &0)]
    );

    println!("{:?}", &a.0);
    println!("{:?}", &a.1);


}
