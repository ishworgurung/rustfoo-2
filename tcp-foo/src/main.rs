use std::net::{TcpStream};
use std::io;

// Being a good netizen lets do a three-way handshake. Also, simplifies a lot of the code.
fn tcp_handshake(addr: &str, port: u16) -> Option<String> {
    let tcp_connect_str = format!("{}:{}", addr, port);
    return match TcpStream::connect(tcp_connect_str) {
        Ok(_) => {
            Some("open".parse().unwrap())
        },
        Err(e) => {
            None
        }
    }
}

pub fn handshake(addr: &str, port: u16) {
    let addr = "vault.ssi.local";
    let port = 8200;
    match tcp_handshake(addr, port) {
        Ok(o) => {
            // construct msgpack for an tcp "open" port event
            println!("addr:{},port:{},state:{}", addr, port, o)
            // send it to kafka
        },
        Err(e) => {
            println!("addr:{},port:{},state:{}", addr, port, e.raw_os_error().unwrap_or_default())
            // construct msgpack for an tcp "close" port event
            println!("addr:{},port:{},state:{}", addr, port, o)
            // send it to kafka
        }
        _ => {}
    };
}

fn main() {
    let addr = "vault.ssi.local";
    let port = 8200;
    tcp_handshake(addr, port);
}