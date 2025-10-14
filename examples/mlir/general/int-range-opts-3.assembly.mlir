module {
  func.func @test() -> i1 {
    %c0 = arith.constant 0 : index
    %0 = test.with_bounds {smax = 9223372036854775807 : index, smin = 0 : index, umax = 9223372036854775807 : index, umin = 0 : index} : index
    %1 = arith.cmpi slt, %0, %c0 : index
    return %1 : i1
  }
}

