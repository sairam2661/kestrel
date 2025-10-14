module {
  func.func @dim_const(%arg0: memref<3x5xi32>) -> index {
    %c0 = arith.constant 0 : index
    %dim = memref.dim %arg0, %c0 : memref<3x5xi32>
    return %dim : index
  }
}

