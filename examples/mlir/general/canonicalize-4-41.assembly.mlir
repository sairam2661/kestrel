module {
  func.func @foldShl() -> i64 {
    %c1_i64 = arith.constant 1 : i64
    %c32_i64 = arith.constant 32 : i64
    %0 = arith.shli %c1_i64, %c32_i64 : i64
    return %0 : i64
  }
  func.func @nofoldShl() -> i64 {
    %c1_i64 = arith.constant 1 : i64
    %c132_i64 = arith.constant 132 : i64
    %0 = arith.shli %c1_i64, %c132_i64 : i64
    return %0 : i64
  }
  func.func @nofoldShl2() -> i64 {
    %c1_i64 = arith.constant 1 : i64
    %c-32_i64 = arith.constant -32 : i64
    %0 = arith.shli %c1_i64, %c-32_i64 : i64
    return %0 : i64
  }
  func.func @nofoldShl3() -> i64 {
    %c1_i64 = arith.constant 1 : i64
    %c64_i64 = arith.constant 64 : i64
    %0 = arith.shli %c1_i64, %c64_i64 : i64
    return %0 : i64
  }
  func.func @foldShru() -> i64 {
    %c8_i64 = arith.constant 8 : i64
    %c2_i64 = arith.constant 2 : i64
    %0 = arith.shrui %c8_i64, %c2_i64 : i64
    return %0 : i64
  }
  func.func @foldShru2() -> i64 {
    %c-2_i64 = arith.constant -2 : i64
    %c1_i64 = arith.constant 1 : i64
    %0 = arith.shrui %c-2_i64, %c1_i64 : i64
    return %0 : i64
  }
  func.func @nofoldShru() -> i64 {
    %c8_i64 = arith.constant 8 : i64
    %c132_i64 = arith.constant 132 : i64
    %0 = arith.shrui %c8_i64, %c132_i64 : i64
    return %0 : i64
  }
  func.func @nofoldShru2() -> i64 {
    %c8_i64 = arith.constant 8 : i64
    %c-32_i64 = arith.constant -32 : i64
    %0 = arith.shrui %c8_i64, %c-32_i64 : i64
    return %0 : i64
  }
  func.func @nofoldShru3() -> i64 {
    %c8_i64 = arith.constant 8 : i64
    %c64_i64 = arith.constant 64 : i64
    %0 = arith.shrui %c8_i64, %c64_i64 : i64
    return %0 : i64
  }
  func.func @foldShrs() -> i64 {
    %c8_i64 = arith.constant 8 : i64
    %c2_i64 = arith.constant 2 : i64
    %0 = arith.shrsi %c8_i64, %c2_i64 : i64
    return %0 : i64
  }
  func.func @foldShrs2() -> i64 {
    %c-2_i64 = arith.constant -2 : i64
    %c1_i64 = arith.constant 1 : i64
    %0 = arith.shrsi %c-2_i64, %c1_i64 : i64
    return %0 : i64
  }
  func.func @nofoldShrs() -> i64 {
    %c8_i64 = arith.constant 8 : i64
    %c132_i64 = arith.constant 132 : i64
    %0 = arith.shrsi %c8_i64, %c132_i64 : i64
    return %0 : i64
  }
  func.func @nofoldShrs2() -> i64 {
    %c8_i64 = arith.constant 8 : i64
    %c-32_i64 = arith.constant -32 : i64
    %0 = arith.shrsi %c8_i64, %c-32_i64 : i64
    return %0 : i64
  }
  func.func @nofoldShrs3() -> i64 {
    %c8_i64 = arith.constant 8 : i64
    %c64_i64 = arith.constant 64 : i64
    %0 = arith.shrsi %c8_i64, %c64_i64 : i64
    return %0 : i64
  }
}

