module {
  func.func @dim_out_of_bounds(%arg0: memref<7x8xf32>) -> index {
    %c7 = arith.constant 7 : index
    %dim = memref.dim %arg0, %c7 : memref<7x8xf32>
    return %dim : index
  }
}

