module {
  func.func @test_minsi(%arg0: i8) -> (i8, i8, i8, i8) {
    %c127_i8 = arith.constant 127 : i8
    %c-128_i8 = arith.constant -128 : i8
    %c42_i8 = arith.constant 42 : i8
    %0 = arith.minsi %arg0, %arg0 : i8
    %1 = arith.minsi %arg0, %c127_i8 : i8
    %2 = arith.minsi %arg0, %c-128_i8 : i8
    %3 = arith.minsi %arg0, %c42_i8 : i8
    return %0, %1, %2, %3 : i8, i8, i8, i8
  }
  func.func @test_minsi2(%arg0: i8) -> (i8, i8, i8, i8) {
    %c127_i8 = arith.constant 127 : i8
    %c-128_i8 = arith.constant -128 : i8
    %c42_i8 = arith.constant 42 : i8
    %0 = arith.minsi %arg0, %arg0 : i8
    %1 = arith.minsi %c127_i8, %arg0 : i8
    %2 = arith.minsi %c-128_i8, %arg0 : i8
    %3 = arith.minsi %c42_i8, %arg0 : i8
    return %0, %1, %2, %3 : i8, i8, i8, i8
  }
}

