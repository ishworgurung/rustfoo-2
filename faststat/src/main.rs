// Simple recursive directory walker to print the size of
// each individual file.
//
// Bug: Does not handle OS permission errors yet.

extern crate rayon;

use std::collections::BTreeMap;
use std::fs::read_dir;
use std::path::PathBuf;
use std::sync::Arc;

pub type StatMap = BTreeMap<PathBuf, u64>;

fn dir_walk(dir: &PathBuf) {
    let mut map: StatMap = BTreeMap::new();
    let pool = rayon::ThreadPoolBuilder::new()
        .num_threads(4)
        .build()
        .unwrap();
    let res = pool.install(|| dir_stat(&dir, &mut map));
    //    pool.join(
    //        || dir_stat(&dir, &mut map.clone()),
    //        || dir_stat(&dir, &mut map.clone()),
    //    );
    for o in res.iter() {
        println!("path={:?} size={:?}", o.0, o.1);
    }
}

fn dir_stat(dir: &PathBuf, map: &mut StatMap) -> Arc<StatMap> {
    let entries = read_dir(dir);
    match entries {
        Ok(dirs) => {
            for p in dirs.into_iter() {
                match p {
                    Ok(de) => {
                        if de.path().is_dir() {
                            let dir = de.path();
                            dir_stat(&dir, map);
                        } else {
                            map.insert(de.path(), de.metadata().unwrap().len());
                        }
                    }
                    Err(e) => {
                        println!("error: {}", e);
                    }
                }
            }
        }
        Err(e) => {
            println!("error: {}", e);
        }
    }

    Arc::new(map.clone())
}

fn main() {
    if let Some(arg) = std::env::args().nth(1) {
        let path = PathBuf::from(arg);
        dir_walk(&path);
    }
}
