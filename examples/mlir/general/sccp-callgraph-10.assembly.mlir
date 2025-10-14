module {
  func.func private @unreferenced_private_function() -> i32 {
    %true = arith.constant true
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.select %true, %c0_i32, %c1_i32 : i32
    return %0 : i32
  }
}

