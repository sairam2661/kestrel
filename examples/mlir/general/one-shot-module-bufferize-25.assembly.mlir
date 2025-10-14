module {
  func.func @foo(%arg0: memref<5xf32>) -> memref<5xf32> {
    %0 = tensor.empty() : tensor<5xf32>
    %1 = call @bar(%0, %arg0) : (tensor<5xf32>, memref<5xf32>) -> memref<5xf32>
    return %1 : memref<5xf32>
  }
  func.func @bar(%arg0: tensor<5xf32>, %arg1: memref<5xf32>) -> memref<5xf32> {
    %0 = call @foo(%arg1) : (memref<5xf32>) -> memref<5xf32>
    return %0 : memref<5xf32>
  }
}

