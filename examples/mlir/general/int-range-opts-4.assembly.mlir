module {
  func.func @test() -> i1 {
    %c-1 = arith.constant -1 : index
    %0 = test.with_bounds {smax = 9223372036854775807 : index, smin = 0 : index, umax = 9223372036854775807 : index, umin = 0 : index} : index
    %1 = arith.cmpi sgt, %0, %c-1 : index
    return %1 : i1
  }
}

