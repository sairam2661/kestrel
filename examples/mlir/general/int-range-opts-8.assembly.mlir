module {
  func.func @trivial_rem() -> i8 {
    %c64_i8 = arith.constant 64 : i8
    %0 = test.with_bounds {smax = 63 : si8, smin = 0 : si8, umax = 63 : ui8, umin = 0 : ui8} : i8
    %1 = arith.remsi %0, %c64_i8 : i8
    return %1 : i8
  }
}

