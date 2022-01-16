#![no_std]
#![no_main]

use core::fmt::Error;
use cty::*;
use redbpf_probes::xdp::prelude::*;
use helpers::fw::helpers::*;

program!(0xFFFFFFFE, "GPL");

// XDP/eBPF based IP-layer firewall.
// o Drop all UDP packets
// o Drop all TCP packets that ingress at port 80.
#[xdp]
pub fn probe(ctx: XdpContext) -> XdpResult {
    if let Ok(ip_protocol) = get_ip_protocol(&ctx) {
        match ip_protocol as u32 {
            IPPROTO_UDP => return Ok(XdpAction::Drop), // drop it on the floor
            IPPROTO_TCP => {
                if let Ok(transport) = ctx.transport() {
                    if transport.dest() == 80 {
                        return Ok(XdpAction::Drop); // drop it on the floor
                    }
                }
            }
            _ => return Ok(XdpAction::Pass), // pass it up the protocol stack
        }
    }
    return Ok(XdpAction::Pass); // pass it up the protocol stack
}

