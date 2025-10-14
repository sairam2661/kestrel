module {
  func.func @test_minui(%arg0: i8) -> (i8, i8, i8, i8) {
    %c-1_i8 = arith.constant -1 : i8
    %c0_i8 = arith.constant 0 : i8
    %c42_i8 = arith.constant 42 : i8
    %0 = arith.minui %arg0, %arg0 : i8
    %1 = arith.minui %arg0, %c-1_i8 : i8
    %2 = arith.minui %arg0, %c0_i8 : i8
    %3 = arith.minui %arg0, %c42_i8 : i8
    return %0, %1, %2, %3 : i8, i8, i8, i8
  }
  func.func @test_minui2(%arg0: i8) -> (i8, i8, i8, i8) {
    %c-1_i8 = arith.constant -1 : i8
    %c0_i8 = arith.constant 0 : i8
    %c42_i8 = arith.constant 42 : i8
    %0 = arith.minui %arg0, %arg0 : i8
    %1 = arith.minui %c-1_i8, %arg0 : i8
    %2 = arith.minui %c0_i8, %arg0 : i8
    %3 = arith.minui %c42_i8, %arg0 : i8
    return %0, %1, %2, %3 : i8, i8, i8, i8
  }
}

