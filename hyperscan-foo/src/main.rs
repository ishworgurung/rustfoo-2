use hyperscan::prelude::*;

fn blocking() {
    let pattern = pattern! {".*test.*"; CASELESS | SOM_LEFTMOST};
    let db: BlockDatabase = pattern.build().unwrap();
    let scratch = db.alloc_scratch().unwrap();
    let mut matches = vec![];
    db.scan("some test data", &scratch, |id, from, to, flags| {
        println!(
            "[b] found pattern #{} @ [{}, {}) flags:{}",
            id, from, to, flags
        );
        matches.push(from..to);
        Matching::Continue
    })
    .unwrap();
    assert_eq!(matches, vec![0..9, 0..10, 0..11, 0..12, 0..13, 0..14]);
}

fn streaming() {
    let db: StreamingDatabase = pattern! {"test"; SOM_LEFTMOST}.build().unwrap();
    let s = db.alloc_scratch().unwrap();
    let st = db.open_stream().unwrap();
    let data = vec!["foo t", "es", "t bar"];
    let mut matches = vec![];
    let mut callback = |id, from, to, flags| {
        matches.push((from, to));
        println!(
            "[s] found pattern #{} @ [{}, {}) flags:{}",
            id, from, to, flags
        );
        Matching::Continue
    };
    for d in data {
        st.scan(d, &s, &mut callback).unwrap();
    }
    st.close(&s, callback).unwrap();
    assert_eq!(matches, vec![(4, 8)]);
}

fn vectoring() {
    let db: VectoredDatabase = pattern! {"test"; CASELESS|SOM_LEFTMOST}.build().unwrap();
    let s = db.alloc_scratch().unwrap();
    let mut matches = vec![];
    db.scan(vec!["foo bar", "test", "bar"], &s, |id, from, to, flags| {
        matches.push(from..to);
        println!(
            "[v] found pattern #{} @ [{}, {}) flags:{}",
            id, from, to, flags
        );
        Matching::Continue
    })
    .unwrap();
    assert_eq!(matches, vec![7..11]);
}

fn main() {
    blocking();
    streaming();
    vectoring();
}
