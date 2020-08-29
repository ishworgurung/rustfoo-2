//! A random LED blinky!
#![deny(unsafe_code)]
#![deny(warnings)]
#![no_std]
#![no_main]

extern crate l3gd20;
extern crate lsm303dlhc;
extern crate panic_semihosting;
extern crate rand;
extern crate rand_chacha;
extern crate stm32f3xx_hal as hal;

//use core::fmt::Write;
//use cortex_m_semihosting::hio;
use cortex_m_rt::entry;

use rand::rngs::SmallRng;
use rand::{Rng, SeedableRng};
use rand_roulette::{
    hal::{delay::Delay, prelude::*, stm32},
    led::Leds,
};

#[entry]
fn main() -> ! {
    let cp = cortex_m::Peripherals::take().unwrap();
    let dp = stm32::Peripherals::take().unwrap();

    let mut systimer = cp.SYST;
    let mut nvic = cp.NVIC;
    //
    //    systimer.get_clock_source();

    let mut flash = dp.FLASH.constrain();
    let mut rcc = dp.RCC.constrain();
    let gpioe = dp.GPIOE.split(&mut rcc.ahb);

    // clock configuration using the default settings (all clocks run at 8 MHz)
    //let clocks = rcc.cfgr.freeze(&mut flash.acr);
    // TRY this alternate clock configuration (all clocks run at 16 MHz)
    let clocks = rcc.cfgr.sysclk(16.mhz()).freeze(&mut flash.acr);
    let mut leds = Leds::new(gpioe);
    let mut delay = Delay::new(cp.SYST, clocks);
    let n = leds.len();
    let seed: [u8; 16] = [0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 1];
    let mut rng = SmallRng::from_seed(seed);
    let mut curr = rng.gen_range(0, &n);
    let mut next = rng.gen_range(0, &n);
    loop {
        //        if let Ok(mut hstdout) = hio::hstdout() {
        //            writeln!(hstdout, "[*]{:#?}", curr).ok();
        //        }
        leds[curr].on();
        leds[next].off();
        delay.delay_ms(100_u8);
        curr = rng.gen_range(0, &n);
        next = rng.gen_range(0, &n);
    }
}
