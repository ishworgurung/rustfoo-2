extern crate libc;
// extern crate seccomp;

// use seccomp::*;
fn main() {
    let buf = "Hello, world!";
    // let filter = SeccompFilter::new(
    //     vec![
    //         allow_syscall(libc::SYS_close),
    //         allow_syscall(libc::SYS_execve),
    //         allow_syscall(libc::SYS_exit_group),
    //         #[cfg(any(target_arch = "x86", target_arch = "x86_64"))]
    //         allow_syscall(libc::SYS_open),
    //         #[cfg(target_arch = "aarch64")]
    //         allow_syscall(libc::SYS_openat),
    //         allow_syscall(libc::SYS_read),
    //     ]
    //     .into_iter()
    //     .collect(),
    //     SeccompAction::Trap,
    // )
    // .unwrap();
    // filter.apply().unwrap();
    unsafe {
        libc::syscall(
            libc::SYS_write,
            libc::STDOUT_FILENO,
            buf.as_bytes(),
            buf.len(),
        );
    };
}