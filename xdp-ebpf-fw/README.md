# README

Sample XDP and eBPF based IP-layer firewall tested on Ubuntu 20.10 with LLVM v11 on qemu.

## Required packages

Installations:
```
$ sudo apt-get install          \
    build-essential             \    
    libelf-dev                  \
    ca-certificates             \
    ca-certificates-java        \
    zlib1g-dev                  \
    llvm-11-dev                 \
    libclang-11-dev             \
    linux-headers-$(uname -r)
```

## Compiling & running

Install `carfgo-bpf`
```
$ cargo install cargo-bpf
```

FYI, the eBPF project was created using:
```
$ cargo bpf new xdp-ebpf-fw
```

Compile:
```
$ cd xdp-ebpf-fw
$ cargo bpf build 
```

Load the eBPF program!
```
$ cd xdp-ebpf-fw
$ cargo bpf load -i eth0 target/bpf/programs/fw/fw.elf
```

## Qemu network queues

On qemu, we need to add 2`N` queues (where `N` is the number of vCPUs).
The following inside `<interface>` (`virsh edit vm`) is required (for 4 vCPUs, allocate 8 queues):
```
<driver name='vhost' txmode='iothread' ioeventfd='on' event_idx='off' queues='8' rx_queue_size='256' tx_queue_size='256'>
    <host csum='off' gso='off' tso4='off' tso6='off' ecn='off' ufo='off' mrg_rxbuf='off'/>
    <guest csum='off' tso4='off' tso6='off' ecn='off' ufo='off'/>
</driver>
```