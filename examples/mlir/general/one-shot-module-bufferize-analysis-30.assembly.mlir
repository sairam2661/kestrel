module {
  func.func @inner_func(%arg0: tensor<?xf32>) -> tensor<?xf32> {
    return %arg0 : tensor<?xf32>
  }
  func.func @equivalent_func_arg(%arg0: index, %arg1: index, %arg2: index, %arg3: tensor<?xf32>) -> tensor<?xf32> {
    %0 = scf.for %arg4 = %arg0 to %arg1 step %arg2 iter_args(%arg5 = %arg3) -> (tensor<?xf32>) {
      %1 = func.call @inner_func(%arg5) : (tensor<?xf32>) -> tensor<?xf32>
      scf.yield %1 : tensor<?xf32>
    }
    return %0 : tensor<?xf32>
  }
}

