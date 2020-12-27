use std::collections::BTreeSet;

#[macro_export]
macro_rules! my_set {
    ( $( $x:expr ), * ) => {
        {
            let mut bt = BTreeSet::new();            
            $(
                bt.insert($x);
            )*
            bt
        }
    };
}

#[macro_export]
macro_rules! my_vec {
    ( $( $x:expr ), * ) => {
        {
            let mut v = Vec::new();            
            $(
                v.push($x);
            )*
            v
        }
    };
}
fn main() {
    //let b = my_set!["100", "200"];
    let dup_strings = my_vec!["100", "200", "200", "300"];
    
    let set: BTreeSet<String> = dup_strings.iter().map(|z| {
        let tmp = String::from(z.to_owned());
        tmp + " deduped "        
    }).collect();

    println!("{:?}", set);
    println!("{:?}", dup_strings);

    let unique_set: BTreeSet<String> = dup_strings.iter().map(|z| {
        let tmp = String::from(z.to_owned());
        tmp + " foo "        
    }).collect();
    println!("{:?}", unique_set);

}
