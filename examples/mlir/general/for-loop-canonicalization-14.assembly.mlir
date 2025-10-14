module {
  func.func @tensor_dim_of_iter_arg_no_canonicalize(%arg0: tensor<?x?xf32>, %arg1: tensor<?x?xf32>) -> index {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c10 = arith.constant 10 : index
    %0:2 = scf.for %arg2 = %c0 to %c10 step %c1 iter_args(%arg3 = %arg0, %arg4 = %c0) -> (tensor<?x?xf32>, index) {
      %dim = tensor.dim %arg3, %c0 : tensor<?x?xf32>
      scf.yield %arg1, %dim : tensor<?x?xf32>, index
    }
    return %0#1 : index
  }
}

