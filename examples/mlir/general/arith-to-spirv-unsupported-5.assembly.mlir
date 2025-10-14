module {
  func.func @unsupported_constant_i64_0() {
    %c0_i64 = arith.constant 0 : i64
    return
  }
}

