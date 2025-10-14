module {
  func.func @inner_func_2(%arg0: tensor<?xf32>) -> tensor<?xf32> {
    %cst = arith.constant 1.000000e+00 : f32
    %c0 = arith.constant 0 : index
    %inserted = tensor.insert %cst into %arg0[%c0] : tensor<?xf32>
    return %inserted : tensor<?xf32>
  }
  func.func @equivalent_func_arg_2(%arg0: tensor<?xf32> {bufferization.writable = true}, %arg1: index, %arg2: index, %arg3: index) -> tensor<?xf32> {
    %0 = scf.for %arg4 = %arg1 to %arg2 step %arg3 iter_args(%arg5 = %arg0) -> (tensor<?xf32>) {
      %1 = func.call @inner_func_2(%arg5) : (tensor<?xf32>) -> tensor<?xf32>
      scf.yield %arg5 : tensor<?xf32>
    }
    return %0 : tensor<?xf32>
  }
}

