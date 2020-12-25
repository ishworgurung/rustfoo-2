
#![no_std]
#![no_main]
use cty::*;
use redbpf_probes::xdp::prelude::*;

program!(0xFFFFFFFE, "GPL");

// Drop all UDP packets but let others pass through
#[xdp]
pub fn block_udp(ctx: XdpContext) -> XdpResult {
    if let Ok(ip) = ctx.ip() {
        unsafe {
            let protocol = (*ip).protocol;
            let xdp_action = match protocol as u32 {
                IPPROTO_TCP => Ok(XdpAction::Pass),
                IPPROTO_UDP => Ok(XdpAction::Drop),
                _ => return Ok(XdpAction::Pass),
            };
            return xdp_action
        }
    }
    Ok(XdpAction::Pass)
}