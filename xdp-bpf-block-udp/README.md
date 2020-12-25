# README

Tested on Ubuntu 20.10 with LLVM version 11.

Compiling & running

```
$ cargo bpf build && cargo bpf load -i enp1s0 target/bpf/programs/block_udp/block_udp.elf 
```

On qemu, add the following inside `<interface>` (`virsh edit vm`) so that there are at least 2`N` number
of network queues available (where `N` is the number of vCPUs).

```
<driver name='vhost' txmode='iothread' ioeventfd='on' event_idx='off' queues='8' rx_queue_size='256' tx_queue_size='256'>
    <host csum='off' gso='off' tso4='off' tso6='off' ecn='off' ufo='off' mrg_rxbuf='off'/>
    <guest csum='off' tso4='off' tso6='off' ecn='off' ufo='off'/>
</driver>
```