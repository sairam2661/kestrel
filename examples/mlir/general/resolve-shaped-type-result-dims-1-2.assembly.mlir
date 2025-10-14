module {
  func.func @empty_tensor_dynamic_dim2(%arg0: index, %arg1: index) -> (index, index) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = tensor.empty(%arg0, %arg1) : tensor<?x?xf32>
    %dim = tensor.dim %0, %c0 : tensor<?x?xf32>
    %dim_0 = tensor.dim %0, %c1 : tensor<?x?xf32>
    return %dim, %dim_0 : index, index
  }
}

