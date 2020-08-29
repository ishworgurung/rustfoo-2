use std::fs::File;
use std::io::BufReader;
use rodio::Source;
use std::env;
use std::thread::sleep;
use std::time::Duration;
use libc::setpriority;
use std::process::exit;

fn main() {
    if env::args().len() == 0 {
        println!("empty file");
        exit(1);
    }
    unsafe {
        // https://linux.die.net/man/2/setpriority
        let x = setpriority(libc::PRIO_PROCESS, 0, -19);
        if x == -1 {
            println!("setpriority() returned -1! does this binary have CAP_SYS_NICE capability?");
            exit(1);
        }
    }
    let args: Vec<String> = env::args().collect();
    let filename = &args[1];
    let device = rodio::default_output_device().unwrap();
    let file = File::open(filename).unwrap();
    let source = rodio::Decoder::new(BufReader::new(file)).unwrap();
    let amp = source.amplify(1.1);
    println!("channels={}, sample rate={}", amp.channels(), amp.sample_rate());
    rodio::play_raw(&device, amp.convert_samples());
    loop { sleep(Duration::from_secs(2)); }
}
