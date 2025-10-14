module {
  func.func @scf_for_yield_only(%arg0: tensor<?xf32> {bufferization.writable = false}, %arg1: tensor<?xf32> {bufferization.writable = true}, %arg2: index, %arg3: index, %arg4: index) -> (tensor<?xf32>, tensor<?xf32>) {
    %0 = scf.for %arg5 = %arg2 to %arg3 step %arg4 iter_args(%arg6 = %arg0) -> (tensor<?xf32>) {
      scf.yield %arg6 : tensor<?xf32>
    }
    %1 = scf.for %arg5 = %arg2 to %arg3 step %arg4 iter_args(%arg6 = %arg1) -> (tensor<?xf32>) {
      scf.yield %arg6 : tensor<?xf32>
    }
    return %0, %1 : tensor<?xf32>, tensor<?xf32>
  }
}

