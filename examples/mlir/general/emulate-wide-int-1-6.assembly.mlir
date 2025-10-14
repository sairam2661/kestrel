module {
  func.func @store_i128(%arg0: i128, %arg1: memref<4xi128, 1>) {
    %c0 = arith.constant 0 : index
    memref.store %arg0, %arg1[%c0] : memref<4xi128, 1>
    return
  }
}

