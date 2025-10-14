module {
  func.func private @private_1() -> (i32, i32) {
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.addi %c0_i32, %c0_i32 {tag = "one"} : i32
    return %c0_i32, %0 : i32, i32
  }
  func.func @test_10_negative() -> i32 {
    %0:2 = call @private_1() : () -> (i32, i32)
    return %0#0 : i32
  }
}

