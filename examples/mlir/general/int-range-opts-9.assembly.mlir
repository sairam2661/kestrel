module {
  func.func @non_const_rhs() -> i8 {
    %c64_i8 = arith.constant 64 : i8
    %0 = test.with_bounds {smax = 2 : si8, smin = 0 : si8, umax = 2 : ui8, umin = 0 : ui8} : i8
    %1 = test.with_bounds {smax = 64 : si8, smin = 63 : si8, umax = 64 : ui8, umin = 63 : ui8} : i8
    %2 = arith.remui %0, %1 : i8
    return %2 : i8
  }
}

