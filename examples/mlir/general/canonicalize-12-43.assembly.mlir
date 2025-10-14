module {
  func.func @fold_rank_memref(%arg0: memref<?x?xf32>) -> index {
    %0 = memref.rank %arg0 : memref<?x?xf32>
    return %0 : index
  }
}

