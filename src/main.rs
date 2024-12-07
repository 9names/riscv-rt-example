#![no_std]
#![no_main]

use riscv_rt::entry;
use riscv;

#[entry]
fn main() -> ! {
    loop {}
}

#[panic_handler]
fn panic_handler(_: &core::panic::PanicInfo) -> ! {
    loop {}
}

#[riscv_rt::exception(riscv::interrupt::Exception::LoadMisaligned)]
fn load_misaligned(_trap_frame: &mut riscv_rt::TrapFrame) -> ! {
    loop{};
}
