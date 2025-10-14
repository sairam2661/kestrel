module {
  func.func @test() -> i8 {
    %c1_i8 = arith.constant 1 : i8
    %0 = test.with_bounds {smax = 127 : i8, smin = 0 : i8, umax = 127 : i8, umin = 0 : i8} : i8
    %1 = arith.shli %0, %c1_i8 : i8
    %2 = test.reflect_bounds %1 : i8
    return %2 : i8
  }
}

