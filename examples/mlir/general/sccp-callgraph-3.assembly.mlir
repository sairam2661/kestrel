module {
  func.func @public(%arg0: i32) -> (i32, i32) {
    %c1_i32 = arith.constant 1 : i32
    return %c1_i32, %arg0 : i32, i32
  }
  func.func @simple_public() -> (i32, i32) {
    %c1_i32 = arith.constant 1 : i32
    %0:2 = call @public(%c1_i32) : (i32) -> (i32, i32)
    return %0#0, %0#1 : i32, i32
  }
}

