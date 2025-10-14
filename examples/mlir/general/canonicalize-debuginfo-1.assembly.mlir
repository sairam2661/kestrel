module {
  func.func @simple_hoist(%arg0: memref<8xi32>) -> i32 {
    %c42_i32 = arith.constant 42 : i32
    %c0 = arith.constant 0 : index
    memref.store %c42_i32, %arg0[%c0] : memref<8xi32>
    %c88_i32 = arith.constant 88 : i32
    return %c88_i32 : i32
  }
}

