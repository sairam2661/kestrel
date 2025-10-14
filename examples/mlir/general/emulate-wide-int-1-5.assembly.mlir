module {
  func.func @load_i128(%arg0: memref<4xi128, 1>) {
    %c0 = arith.constant 0 : index
    %0 = memref.load %arg0[%c0] : memref<4xi128, 1>
    return
  }
}

