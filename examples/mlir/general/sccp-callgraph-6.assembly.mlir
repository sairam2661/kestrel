module {
  func.func private @callable(%arg0: i32) -> i32 {
    return %arg0 : i32
  }
  func.func @conflicting_constant() -> (i32, i32) {
    %c1_i32 = arith.constant 1 : i32
    %c2_i32 = arith.constant 2 : i32
    %0 = call @callable(%c1_i32) : (i32) -> i32
    %1 = call @callable(%c2_i32) : (i32) -> i32
    return %0, %1 : i32, i32
  }
}

