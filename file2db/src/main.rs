extern crate rayon;

use rusqlite::types::ToSql;
use rusqlite::{Connection, Result, NO_PARAMS, Error, MappedRows, Row, Statement};
use time::Timespec;
use std::io::ErrorKind;

use std::collections::BTreeMap;
use std::fs::read_dir;
use std::path::PathBuf;
use std::sync::Arc;

pub type StatMap = BTreeMap<PathBuf, String>; // path, size (as String)

fn dir_walk(dir: &PathBuf) {
    let mut map: StatMap = BTreeMap::new();
    let pool = rayon::ThreadPoolBuilder::new()
        .num_threads(2)
        .build()
        .unwrap();
    println!("top dir: {:?}", dir);
    let res = pool.install(|| dir_stat(&dir, &mut map));

    pool.join(
        || dir_stat(&dir, &mut map.clone()),
        || dir_stat(&dir, &mut map.clone()),
    );
    insert_result(res.clone());


//    for o in res.iter() {
//        println!("path:{:?} size:{:?}", o.0, o.1);
//
//    }
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
                            let _path = de.path();
                            // TODO: I am storing the u64 file length as string because
                            // I haven't been able to figure out whether the lib supports supports u64
                            // SQLite3 data type or note.
                            let _path_len = de.metadata().unwrap().len().to_string();
                            map.insert(_path,_path_len);
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


#[derive(Debug)]
struct VideoFile {
    id: i32,
    file_path: String,
    file_size: String,
    time_created: Timespec,
    data: Option<Vec<u8>>, // TODO
}

fn insert_result(result: Arc<StatMap>) {
    let conn = Connection::open_in_memory();
    match conn {
        Ok(c) => {
            let e = c.execute(
                "CREATE TABLE video_file (
                  id              INTEGER PRIMARY KEY AUTOINCREMENT,
                  file_path       TEXT NOT NULL,
                  file_size       TEXT NOT NULL,
                  time_created    TEXT NOT NULL,
                  data            BLOB
                  )",
                NO_PARAMS,
            );
            match e {
                Ok(_) => {
                    println!("{}","created video_file table!")
                },
                Err(ee) => {
                    panic!("panic error: {}", ee)
                },
            }
            for o in result.iter() {
                //println!("path:{:?} size:{:?}", o.0, o.1);
                let mut fpath = o.0.clone();
                let mut fsize = o.1.clone();
                let vf = VideoFile {
                    id: 0,
                    file_path: fpath.into_os_string().into_string().unwrap(),
                    file_size: fsize,
                    time_created: time::get_time(),
                    data: None,
                };

                let d = c.execute(
                    "INSERT INTO video_file (file_path, file_size, time_created, data)
                  VALUES (?1, ?2, ?3, ?4)",
                    &[
                        &vf.file_path as &dyn ToSql,
                        &vf.file_size as &dyn ToSql,
                        &vf.time_created,
                        &vf.data
                    ],
                );
            }
            let mut result_stmt =
                c.prepare("SELECT id, file_path, file_size, time_created, data FROM video_file");
            match result_stmt {
                Ok(stmt) => {
                    println!("reading back1111");
                    let mut local_stmt = stmt;
                    let result =
                        local_stmt.query_map(NO_PARAMS, |row| Ok(VideoFile {
                            id: row.get(0)?,
                            file_path: row.get(1)?,
                            file_size: row.get(2)?,
                            time_created: row.get(3)?,
                            data: row.get(4)?,
                        }));

                    match result {
                        Ok(videofile_iter) => {
                            for videofile in videofile_iter {
                                println!("{:?}", videofile.unwrap());
                            }
                        },
                        Err(e) => {
                            panic!("panic error: {}", e)
                        },
                    }
                },
                Err(e) => {
                    panic!("panic error: {}", e)
                },
            }
        },
        Err(_) => {},
    }

    // Find all the file path of size > 0b
    // Create a video file object for the matching file path
    // Store the video file object to sqlite
    //return Option::Some(str("ok"));
}

fn main() {
    if let Some(arg) = std::env::args().nth(1) {
        let path = PathBuf::from(arg);
        dir_walk(&path);
    }
}
