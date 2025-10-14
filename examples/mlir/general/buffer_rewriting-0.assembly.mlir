module {
  func.func @sparse_push_back(%arg0: index, %arg1: memref<?xf64>, %arg2: f64) -> (memref<?xf64>, index) {
    %outBuffer, %newSize = sparse_tensor.push_back %arg0, %arg1, %arg2 : index, memref<?xf64>, f64
    return %outBuffer, %newSize : memref<?xf64>, index
  }
}

