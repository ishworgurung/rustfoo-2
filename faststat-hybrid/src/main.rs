// Simple recursive directory walker to print the size of each individual file.
// The goal of this small project is to be as fast as `du -sh` one optimisation
// at a time :)

use rayon::prelude::*;
//use std::collections::BTreeMap;
use std::fs::read_dir;
use std::path::PathBuf;
// Better to use AtomicU64!
use rayon::ThreadPoolBuilder;
use std::sync::{Arc, Mutex, MutexGuard};

//type StatMap = BTreeMap<PathBuf, u64>;
type ArcMutexU64 = Arc<Mutex<u64>>;

fn stat_init(paths: Vec<String>) {
    let pool = ThreadPoolBuilder::new()
        .build()
        .unwrap();
    // Thanks to @Nemo517 on rust discord for tips on making it use parallel iterator.
    pool.install(|| {
        paths.into_par_iter().for_each(|d| {
            let mut counter: ArcMutexU64 = Arc::new(Mutex::new(0));
            let mut pb = PathBuf::from(d.clone());
            stat_dir(&mut pb, &mut counter);
            println!(
                "{:?} {}mb",
                d.clone(),
                *counter.lock().unwrap() / 1024 / 1024
            );
        });
    });
}

fn stat_dir(dir: &mut PathBuf, total: &mut ArcMutexU64) {
    let entries = read_dir(dir);
    match entries {
        Ok(dirs) => {
            for p in dirs.into_iter() {
                match p {
                    Ok(de) => {
                        if de.path().is_dir() {
                            let mut dir = de.path();
                            stat_dir(&mut dir, total);
                        } else {
                            let mut size: MutexGuard<u64> = total.try_lock().unwrap();
                            *size += de.metadata().unwrap().len();
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
}

fn main() {
    let mut paths: Vec<String> = Vec::new();
    std::env::args().skip(1).for_each(|e| {
        paths.push(String::from(e.clone()));
    });
    if paths.len() > 0 {
        stat_init(paths);
    }
}
