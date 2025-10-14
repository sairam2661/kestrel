module {
  func.func @scf_for(%arg0: tensor<?xf32>, %arg1: tensor<?xf32>, %arg2: index, %arg3: index, %arg4: index) -> (tensor<?xf32>, tensor<?xf32>) {
    %0:2 = scf.for %arg5 = %arg2 to %arg3 step %arg4 iter_args(%arg6 = %arg0, %arg7 = %arg1) -> (tensor<?xf32>, tensor<?xf32>) {
      scf.yield %arg6, %arg7 : tensor<?xf32>, tensor<?xf32>
    }
    return %0#0, %0#1 : tensor<?xf32>, tensor<?xf32>
  }
}

