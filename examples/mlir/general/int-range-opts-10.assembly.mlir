module {
  func.func @wraps() -> i8 {
    %c64_i8 = arith.constant 64 : i8
    %0 = test.with_bounds {smax = 65 : si8, smin = 63 : si8, umax = 65 : ui8, umin = 63 : ui8} : i8
    %1 = arith.remsi %0, %c64_i8 : i8
    return %1 : i8
  }
}

