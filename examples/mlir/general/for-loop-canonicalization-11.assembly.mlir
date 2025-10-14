module {
  func.func @tensor_dim_of_iter_arg(%arg0: tensor<?x?xf32>) -> index {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c10 = arith.constant 10 : index
    %0:2 = scf.for %arg1 = %c0 to %c10 step %c1 iter_args(%arg2 = %arg0, %arg3 = %c0) -> (tensor<?x?xf32>, index) {
      %dim = tensor.dim %arg2, %c0 : tensor<?x?xf32>
      scf.yield %arg2, %dim : tensor<?x?xf32>, index
    }
    return %0#1 : index
  }
}

