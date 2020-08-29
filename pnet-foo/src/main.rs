/* Work in progress - checksum incorrect (discarded by TCP stack).
03:27:36.209150 Out 00:e0:4c:68:51:75 ethertype IPv4 (0x0800), length 56: (tos 0x0, ttl 64, id 55054, offset 0, flags [DF], proto TCP (6), length 40)
    172.16.255.240.44000 > 172.16.255.31.9000: Flags [S], cksum 0x0c69 (incorrect -> 0x093c), seq 2267645745, win 29200, length 0
    0x0000:  0004 0001 0006 00e0 4c68 5175 0000 0800  ........LhQu....
    0x0010:  4500 0028 d70e 4000 4006 0c90 ac10 fff0  E..(..@.@.......
    0x0020:  ac10 ff1f abe0 2328 8729 8731 0000 0000  ......#(.).1....
    0x0030:  5002 7210 0c69 0001                      P.r..i..

*/
use pnet::packet::ip::IpNextHeaderProtocols;
use pnet::packet::ipv4::{Ipv4Flags, MutableIpv4Packet};
use pnet::packet::tcp::{MutableTcpPacket, TcpFlags, TcpOption};
use pnet::packet::MutablePacket;
use pnet::transport::{tcp_packet_iter, transport_channel, TransportChannelType::Layer3};
use pnet::util;
// use pnet::packet::tcp::{ipv4_checksum, ipv6_checksum, TcpFlags};

use pnet_packet::ip::IpNextHeaderProtocol;
use pnet_packet::util::ipv4_checksum;
use std::net::{IpAddr, Ipv4Addr, Ipv6Addr, SocketAddr, SocketAddrV4, SocketAddrV6};
use std::thread::sleep;
use std::time::Duration;

// static IPV4_HEADER_LEN: usize = 5;
// static TCP_HEADER_LEN: usize = 64;
// static TCP_PAYLOAD_LEN: usize = 0;

fn send_tcp<'a>(
    // buf_ip: &'a mut [u8],
    // buf_tcp: &'a mut [u8],
    source: Ipv4Addr,
    dest: Ipv4Addr,
    dport: u16,
    data: &[u8],
) {
    let tcp_len = MutableTcpPacket::minimum_packet_size() + data.len();
    let total_len = MutableIpv4Packet::minimum_packet_size() + tcp_len;

    let mut pkt_buf: Vec<u8> = vec![0; total_len];

    let ipv4_header_len = match MutableIpv4Packet::minimum_packet_size().checked_div(4) {
        Some(l) => l as u8,
        None => 0,
    };

    // Create IPv4 packet
    let mut ipv4_packet = MutableIpv4Packet::new(&mut pkt_buf).unwrap(); //expect("Error creating ipv4 packet");
    ipv4_packet.set_header_length(ipv4_header_len);
    ipv4_packet.set_total_length(total_len as u16);
    ipv4_packet.set_next_level_protocol(IpNextHeaderProtocols::Tcp);

    ipv4_packet.set_source(source);
    ipv4_packet.set_version(4);
    ipv4_packet.set_ttl(64);
    ipv4_packet.set_destination(dest);
    ipv4_packet.set_flags(Ipv4Flags::DontFragment);
    ipv4_packet.set_options(&[]);

    let mut tcp_packet = MutableTcpPacket::new(ipv4_packet.payload_mut()).unwrap(); //.expect("Error creating tcp packet");
    let tcp_header_len = match MutableTcpPacket::minimum_packet_size().checked_div(4) {
        Some(l) => l as u8,
        None => 0,
    };
    tcp_packet.set_source(44000); // 16
    tcp_packet.set_destination(dport); // 16
    tcp_packet.set_data_offset(tcp_header_len); // 4
    tcp_packet.set_flags(TcpFlags::SYN); // 1
    tcp_packet.set_window(4);
    tcp_packet.set_sequence(rand::random::<u32>());
    let csum = ipv4_checksum(
        &tcp_packet.packet_mut(),
        8,
        &[],
        &source.to_owned(),
        &dest.to_owned(),
        IpNextHeaderProtocols::Tcp,
    );
    tcp_packet.set_checksum(csum);

    let protocol = Layer3(IpNextHeaderProtocols::Tcp);
    let (mut tx, mut rx) = transport_channel(2 << 15, protocol)
        .map_err(|err| format!("Error opening the channel: {}", err))
        .unwrap();

    match tx.send_to(ipv4_packet, IpAddr::V4(dest)) {
        Ok(bytes) => {
            if bytes != total_len {
                println!("short send count: {}", bytes)
            }
        }
        Err(e) => println!("Could not send: {}", e),
    }

    let mut rx_iter = tcp_packet_iter(&mut rx);
    loop {
        match rx_iter.next() {
            Ok((packet, addr)) => {
                // if (packet.get_flags() == TcpFlags::ACK) {
                //     println!("received {:?}", packet);
                // }
                println!("ack set {:?}", packet.get_flags() & TcpFlags::ACK);
                // println!("acked? {:?}", packet.get_flags());
                println!("source port {:?}", packet.get_source());
                println!("dst port {:?}", packet.get_destination());
                println!("version: {:?} ", packet.get_version();
                println!("==============");
                // let mut vec: Vec<u8> = vec![0; 1024];
                // let mut new_packet = MutableTcpPacket::new(&mut vec[..]).unwrap();
                //
                // // Create a clone of the original packet
                // new_packet.clone_from(&packet);
                //
                // // Switch the source and destination ports
                // new_packet.set_source(packet.get_source());
                // new_packet.set_destination(packet.get_destination());
                //
                // new_packet.set_data_offset(tcp_header_len); // 4
                // new_packet.set_flags(TcpFlags::SYN | TcpFlags::ACK); // 1
                // new_packet.set_window(4);
                // new_packet.set_sequence(rand::random::<u32>());
                //
                // // Send the packet
                // // tx.send_to(new_packet, addr);
                // match tx.send_to(new_packet, addr) {
                //     Ok(n) => assert_eq!(n, 1024), //packet.len()),
                //     Err(e) => panic!("failed to send packet: {}", e),
                // }
                // return;
            }
            Err(e) => {
                println!("error: {:?}", e);
                return;
            }
        }

        // if let Ok((remaining, eth_frame)) = ethernet::parse_ethernet_frame(&packet) {
        //     log!(log_level, "eth: {:?}", eth_frame);
        //
        //     match (eth_frame.ethertype, src, dst) {
        //         (ethernet::EtherType::IPv4, SocketAddr::V4(src), SocketAddr::V4(dst)) => {
        //             if let Ok((remaining, ip_hdr)) = ipv4::parse_ipv4_header(remaining) {
        //                 log!(log_level, "ip4: {:?}", ip_hdr);
        //
        //                 // skip packet if src/dst ip doesn't match
        //                 if !ipv4_addr_match(src.ip(), &ip_hdr.source_addr)
        //                     || !ipv4_addr_match(dst.ip(), &ip_hdr.dest_addr)
        //                 {
        //                     continue;
        //                 }
        //
        //                 match ip_hdr.protocol {
        //                     ip::IPProtocol::TCP => {
        //                         if let Ok((remaining, tcp_hdr)) = tcp::parse_tcp_header(remaining) {
        //                             log!(log_level, "tcp: {:?}", tcp_hdr);
        //
        //                             let ip_hdr = IPHeader {
        //                                 source_addr: IpAddr::V4(ip_hdr.source_addr),
        //                                 dest_addr: IpAddr::V4(ip_hdr.dest_addr),
        //                             };
        //                             if let Some(result) = callback(ip_hdr, tcp_hdr, remaining)? {
        //                                 return Ok(result);
        //                             }
        //                         }
        //                     }
        //                     _ => (),
        //                 }
        //             }
        //         }
        //         (ethernet::EtherType::IPv6, SocketAddr::V6(src), SocketAddr::V6(dst)) => {
        //             if let Ok((remaining, ip_hdr)) = ipv6::parse_ipv6_header(remaining) {
        //                 log!(log_level, "ip4: {:?}", ip_hdr);
        //
        //                 // skip packet if src/dst ip doesn't match
        //                 if !ipv6_addr_match(src.ip(), &ip_hdr.source_addr)
        //                     || !ipv6_addr_match(dst.ip(), &ip_hdr.dest_addr)
        //                 {
        //                     continue;
        //                 }
        //
        //                 match ip_hdr.next_header {
        //                     ip::IPProtocol::TCP => {
        //                         if let Ok((remaining, tcp_hdr)) = tcp::parse_tcp_header(remaining) {
        //                             log!(log_level, "tcp: {:?}", tcp_hdr);
        //
        //                             let ip_hdr = IPHeader {
        //                                 source_addr: IpAddr::V6(ip_hdr.source_addr),
        //                                 dest_addr: IpAddr::V6(ip_hdr.dest_addr),
        //                             };
        //                             if let Some(result) = callback(ip_hdr, tcp_hdr, remaining)? {
        //                                 return Ok(result);
        //                             }
        //                         }
        //                     }
        //                     _ => (),
        //                 }
        //             }
        //         }
        //         _ => (),
        //     }
        // }
    }
}

fn tcp_syn(source: Ipv4Addr, dest: Ipv4Addr, port: u16) {
    // let protocol = Layer3(IpNextHeaderProtocols::Tcp);
    // let (mut tx, _) = transport_channel(2 << 15, protocol)
    //     .map_err(|err| format!("Error opening the channel: {}", err))
    //     .unwrap();

    // let mut rx = tcp_packet_iter(&mut rx);
    // let mut buf_ip = [0u8; 40];
    // let mut buf_tcp = [0u8; 40];

    //let tcp_packet = create_tcp_packet(&mut buf_ip, &mut buf_tcp, source, dest, port);
    send_tcp(source, dest, port, &[0, 1, 2, 3]);

    // if let Ok((u, addr)) = rx.next() {
    //     println!("addr: {:?}", addr.to_string());
    //     println!("{:?}", u);
    // }
}

fn main() {
    loop {
        tcp_syn([172, 16, 255, 240].into(), [172, 16, 255, 247].into(), 9000);
        sleep(Duration::from_millis(10000));
        println!("==========================")
    }
}
