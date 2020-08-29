//! A LED roulette!
//#![deny(unsafe_code)]
//#![deny(warnings)]
#![no_std]
#![no_main]

extern crate l3gd20;
extern crate lsm303dlhc;
extern crate panic_semihosting;
extern crate stm32f3xx_hal as hal;

extern crate rand;
extern crate rand_chacha;

use core::fmt::Write;
use core::ptr;
use cortex_m_rt::{entry, exception, ExceptionFrame};
use cortex_m_semihosting::hio;

use rand_roulette::{
    hal::{delay::Delay, prelude::*, stm32},
    led::Leds,
};

use rand::{Rng, RngCore, SeedableRng};
use rand_chacha::ChaCha8Rng;

fn rand_float<R: Rng>(rng: &mut R) -> &'static str {
    //    let x: f32 = rng.gen();
    //    core::stringify!("{:.1}", x)
    core::stringify!(1)
}

//#[exception]
//fn HardFault(ef: &ExceptionFrame) -> ! {
//    if let Ok(mut hstdout) = hio::hstdout() {
//        writeln!(hstdout, "{:#?}", ef).ok();
//    }
//
//    loop {}
//}

#[entry]
fn main() -> ! {
    let cp = cortex_m::Peripherals::take().unwrap();
    let dp = stm32::Peripherals::take().unwrap();

    let mut flash = dp.FLASH.constrain();
    let mut rcc = dp.RCC.constrain();
    let gpioe = dp.GPIOE.split(&mut rcc.ahb);

    // clock configuration using the default settings (all clocks run at 8 MHz)
    let clocks = rcc.cfgr.freeze(&mut flash.acr);
    // TRY this alternate clock configuration (all clocks run at 16 MHz)
    //let clocks = rcc.cfgr.sysclk(16.mhz()).freeze(&mut flash.acr);
    let mut leds = Leds::new(gpioe);
    let mut delay = Delay::new(cp.SYST, clocks);
    let n = leds.len();
    let mut curr: usize = 0;

    //    let seed = [
    //        0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0,
    //        0, 0, 0,
    //    ];
    let mut crng = ChaCha8Rng::seed_from_u64(100789);

    //    for i in 0..10 {
    //        if let Ok(mut hstdout) = hio::hstdout() {
    //            writeln!(hstdout, "{:#?}", rand_float(&mut crng)).ok();
    //            writeln!(hstdout, "{:#?}", i).ok();
    //        }
    //    }

    loop {
        if curr >= n {
            curr = 0;
        }
        let rf = rand_float(&mut crng);
        if let Ok(mut hstdout) = hio::hstdout() {
            writeln!(hstdout, "{:#?}", rf).ok();
            writeln!(hstdout, "{:#?}", curr).ok();
        }
        let next = (curr + 1) % n;
        leds[curr].on();
        leds[next].off();

        //        if bit == 1 {
        //            leds[next].off();
        //        } else {
        //            leds[curr].on();
        //        }
        curr += 1;
        delay.delay_ms(2_u8);
        //}
    }
}
