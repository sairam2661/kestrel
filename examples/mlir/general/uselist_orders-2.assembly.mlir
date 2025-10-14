module {
  func.func @test_with_multiple_block_arg_uses(%arg0: i32) -> i32 {
    %c45_i32 = arith.constant 45 : i32
    %c46_i32 = arith.constant 46 : i32
    %0 = "test.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "test.addi"(%0, %arg0) : (i32, i32) -> i32
    %2 = "test.addi"(%0, %c46_i32) : (i32, i32) -> i32
    %3 = "test.addi"(%0, %0) : (i32, i32) -> i32
    %4 = "test.addi"(%1, %2) : (i32, i32) -> i32
    %5 = "test.addi"(%4, %3) : (i32, i32) -> i32
    %6 = "test.addi"(%5, %2) : (i32, i32) -> i32
    %7 = "test.addi"(%6, %2) : (i32, i32) -> i32
    return %7 : i32
  }
}

