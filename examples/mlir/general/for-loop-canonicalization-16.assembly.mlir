module {
  func.func @tensor_dim_of_loop_result_no_canonicalize(%arg0: tensor<?x?xf32>, %arg1: tensor<?x?xf32>) -> index {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c10 = arith.constant 10 : index
    %0:2 = scf.for %arg2 = %c0 to %c10 step %c1 iter_args(%arg3 = %arg0, %arg4 = %arg1) -> (tensor<?x?xf32>, tensor<?x?xf32>) {
      scf.yield %arg3, %arg1 : tensor<?x?xf32>, tensor<?x?xf32>
    }
    %dim = tensor.dim %0#1, %c0 : tensor<?x?xf32>
    return %dim : index
  }
}

