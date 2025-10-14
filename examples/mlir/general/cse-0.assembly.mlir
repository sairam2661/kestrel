module {
  func.func @simple_constant() -> (i32, i32) {
    %c1_i32 = arith.constant 1 : i32
    %c1_i32_0 = arith.constant 1 : i32
    return %c1_i32, %c1_i32_0 : i32, i32
  }
}

