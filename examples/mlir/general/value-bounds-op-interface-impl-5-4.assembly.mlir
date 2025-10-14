module {
  func.func @memref_dim_all_positive(%arg0: memref<?xf32>, %arg1: index) {
    %c0 = arith.constant 0 : index
    %dim = memref.dim %arg0, %arg1 : memref<?xf32>
    "test.compare"(%dim, %c0) <{cmp = "GE"}> : (index, index) -> ()
    return
  }
}

