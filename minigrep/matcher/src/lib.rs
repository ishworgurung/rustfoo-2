use std::io::ErrorKind;

pub struct Match {
    c: String,  // haystack
    s: String,  // pattern
}

impl Match {
    pub fn new(f: &str, s: String) -> Match {
        let c = match std::fs::read_to_string(f) {
            Ok(co) =>
                co,
            Err(e) => match e.kind() {
                ErrorKind::NotFound =>
                    panic!("file not found: {:?}", e),
                default =>
                    panic!("problem opening the file: {:?}", default),
            }
        };
        Match{ c, s }
    }

    pub fn find(&self) -> Vec<&str> {
        let mut matches: Vec<&str> = Vec::new();
        let pat = &self.s;
        let lines: Vec<&str> = self.c.lines().collect();
        for line in lines {
            if line.contains(pat) {
                matches.push(line)
            }
        }
        matches.clone()
    }
}