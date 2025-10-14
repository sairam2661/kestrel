module {
  func.func private @some_use(tensor<?xf32>)
  func.func @scf_for_deps(%arg0: tensor<?xf32> {bufferization.writable = true}, %arg1: tensor<?xf32> {bufferization.writable = true}, %arg2: index, %arg3: index, %arg4: index) -> tensor<?xf32> {
    %0 = scf.for %arg5 = %arg2 to %arg3 step %arg4 iter_args(%arg6 = %arg0) -> (tensor<?xf32>) {
      func.call @some_use(%arg6) : (tensor<?xf32>) -> ()
      scf.yield %arg6 : tensor<?xf32>
    }
    %1 = scf.for %arg5 = %arg2 to %arg3 step %arg4 iter_args(%arg6 = %arg0) -> (tensor<?xf32>) {
      func.call @some_use(%arg6) : (tensor<?xf32>) -> ()
      scf.yield %arg6 : tensor<?xf32>
    }
    return %1 : tensor<?xf32>
  }
}

