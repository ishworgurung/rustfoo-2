extern crate clap;
use clap::{Arg, App};

use matcher::Match;

fn main() {
    let parsed_matches = App::new("Minigrep")
        .version("0.2.0")
        .author("Ishwor Gurung <me@ishworgurung.com")
        .about("Minigrep in Rust")
        .arg(Arg::with_name("file")
            .short("f")
            .long("file")
            .value_name("FILE")
            .required(true)
            .help("Sets a file to minigrep")
            .takes_value(true))
        .arg(Arg::with_name("pattern")
            .short("p")
            .long("pattern")
            .required(true)
            .help("Sets the pattern to use")
            .takes_value(true))
        .get_matches();


    let grep = Match::new(
        parsed_matches.value_of("file").unwrap(),
        String::from(parsed_matches.value_of("pattern").unwrap()),
    );
    for matches in grep.find() {
        println!("{}", matches);
    }
}

#[test]
fn test_match() {
    let grep = Match::new(
        "textfile",
        String::from("Isaac"),
    );
    let matches = grep.find();
    assert_eq!(
        "Sir Isaac Newton is said to have avowed that he felt like a child picking",
        matches[0]
    );
}

#[test]
fn test_matched_length() {
    let grep = Match::new(
        "textfile",
        String::from("Isaac"),
    );
    let matches = grep.find();
    assert_eq!(1, matches.len());
}