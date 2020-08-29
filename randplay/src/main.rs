#![no_main]
#![no_std]

extern crate panic_semihosting;
use aux9::{entry, tim6};

#[inline(never)]
fn delay(tim6: &tim6::RegisterBlock, ms: u16) {
    // Set the timer to go off in `ms` ticks
    // 1 tick = 1 ms
    tim6.arr.write(|w| w.arr().bits(ms));

    // CEN: Enable the counter
    tim6.cr1.modify(|_, w| w.cen().set_bit());

    // Wait until the alarm goes off (until the update event occurs)
    while !tim6.sr.read().uif().bit_is_set() {}

    // Clear the update event flag
    tim6.sr.modify(|_, w| w.uif().clear_bit());
}

#[entry]
fn main() -> ! {
    let (mut leds, rcc, tim6) = aux9::init();

    // Power on the TIM6 timer
    rcc.apb1enr.modify(|_, w| w.tim6en().set_bit());

    // OPM Select one pulse mode
    // CEN Keep the counter disabled for now
    tim6.cr1.write(|w| w.opm().set_bit().cen().clear_bit());

    // Configure the prescaler to have the counter operate at 1 KHz
    // APB1_CLOCK = 8 MHz
    // PSC = 7999
    // 8 MHz / (7999 + 1) = 1 KHz
    // The counter (CNT) will increase on every millisecond
    tim6.psc.write(|w| w.psc().bits(7_999));

    let ms = 10;
    loop {
        for curr in 0..8 {
            let next = (curr + 1) % 8;

            leds[next].on();
            delay(tim6, ms);
            leds[curr].off();
            delay(tim6, ms);
        }
    }
}

//use rand::{SeedableRng, Rng, RngCore}; //, thread_rng};
//use rand_chacha::ChaCha8Rng;
//use rand::distributions::Distribution;
//use rand::distributions::{Alphanumeric, Uniform, Standard};
//
//fn rand_float<R: Rng>(rng: &mut R) -> String {
//    let x: f64 = rng.gen();
//    format!("{:.1}", x)
//}
//
////pub fn example_1() {
////    let mut rng = thread_rng();
////    println!("{} (seed unknown)", rand_float(&mut rng));
////}
//
//pub fn example_2() {
//    let mut rng = ChaCha8Rng::seed_from_u64(100789);
//    println!("{} (always 0.295)", rand_float(&mut rng));
//}
//
//pub fn example_6() {
//    let mut rng = ChaCha8Rng::seed_from_u64(100789);
//    let die_range = Uniform::new_inclusive(1, 6);
//    let mut roll_die = die_range.sample_iter(rng);
//    let mut rd = roll_die.next().unwrap();
//    while rd != 6 {
//        println!("Not a 6 but a {}; rolling again!", rd);
//        rd = roll_die.next().unwrap();
//    }
//}
////pub fn choose_rng(opt_seed: Option<u64>) -> Box<dyn RngCore> {
////    if let Some(seed) = opt_seed {
////        Box::new(ChaCha8Rng::seed_from_u64(seed))
////    } else {
////        Box::new(thread_rng())
////    }
////}
//
////pub fn example_3(opt_seed: Option<u64>) {
////    let mut rng = choose_rng(opt_seed);
////    println!("{} (depends on opt_seed)", rand_float(&mut rng));
////}1
//
//pub fn main() {
////    example_1();
//    example_2();
//    example_6();
////    example_3(None);
////    example_3(Some(12345));
//}