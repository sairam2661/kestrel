module {
  func.func @unsupported_constant_i64_1() {
    %c4294967296_i64 = arith.constant 4294967296 : i64
    return
  }
}

