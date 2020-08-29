// BUG: Duplicate counts of the same files!!!

// Simple recursive directory walker to print the size of
// each individual file.

use crossbeam_channel::{unbounded, Receiver, Sender};

use std::collections::BTreeMap;
use std::fs::read_dir;
use std::path::PathBuf;
use std::sync::{Arc, Mutex};
use std::thread;
use std::thread::JoinHandle;
use std::time::Duration;

pub type StatMap = BTreeMap<PathBuf, u64>;

const NUM_THREADS: u8 = 4;

fn dir_stat_init(dir: &PathBuf) {
    let mut threads: Vec<JoinHandle<()>> = Vec::new();
    let mut cthreads: Vec<JoinHandle<()>> = Vec::new();
    let mut pb = PathBuf::from(dir).clone();
    let mut counter: Arc<Mutex<u64>> = Arc::new(Mutex::new(0));

    for _ in 0..NUM_THREADS {
        let mut pb1 = pb.clone();
        let mut counter = counter.clone();
        let t = thread::spawn(move || {
            dir_stat(&mut pb1, &mut counter);
        });
        threads.push(t);
    }

    for t in threads {
        t.join().unwrap();
    }
    println!("Result: {}", *counter.lock().unwrap());
}

fn dir_stat(dir: &mut PathBuf, total: &mut Arc<Mutex<u64>>) {
    let entries = read_dir(dir);
    match entries {
        Ok(dirs) => {
            for p in dirs.into_iter() {
                match p {
                    Ok(de) => {
                        if de.path().is_dir() {
                            let mut dir = de.path();
                            dir_stat(&mut dir, total);
                        } else {
                            let _size = de.metadata().unwrap().len();
                            //                            println!("f={:?} s={:?}b", de.path(), _size);
                            let mut num = total.lock().unwrap();
                            *num += _size;
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
    // Get the first argument as the path
    if let Some(arg) = std::env::args().nth(1) {
        // Create a `PathBuf` from the first arg
        let path = PathBuf::from(arg);
        // Initialise directory walker
        dir_stat_init(&path);
    }
}
