module {
  func.func @bitcastOfBitcast(%arg0: i16) -> i16 {
    %0 = arith.bitcast %arg0 : i16 to f16
    %1 = arith.bitcast %0 : f16 to bf16
    %2 = arith.bitcast %1 : bf16 to i16
    return %2 : i16
  }
}

