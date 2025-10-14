module {
  func.func @non_tensor_for_arg(%arg0: tensor<?xf32> {bufferization.writable = true}) -> tensor<?xf32> {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 2.000000e+00 : f32
    %c10 = arith.constant 10 : index
    %0:2 = scf.for %arg1 = %c0 to %c10 step %c1 iter_args(%arg2 = %c1, %arg3 = %arg0) -> (index, tensor<?xf32>) {
      %inserted = tensor.insert %cst into %arg3[%arg2] : tensor<?xf32>
      scf.yield %arg2, %inserted : index, tensor<?xf32>
    }
    return %0#1 : tensor<?xf32>
  }
}

