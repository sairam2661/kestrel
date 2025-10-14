module {
  func.func private @some_use(index, index)
  func.func @empty_tensor_canonicalize(%arg0: index) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = tensor.empty(%arg0) : tensor<?x42xf32>
    %dim = tensor.dim %0, %c0 : tensor<?x42xf32>
    %dim_0 = tensor.dim %0, %c1 : tensor<?x42xf32>
    call @some_use(%dim, %dim_0) : (index, index) -> ()
    return
  }
}

