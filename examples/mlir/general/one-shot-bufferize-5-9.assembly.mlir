module {
  func.func @scf_for_yield_non_equivalent(%arg0: tensor<?xf32>, %arg1: index, %arg2: index, %arg3: index) -> tensor<?xf32> {
    %0 = scf.for %arg4 = %arg1 to %arg2 step %arg3 iter_args(%arg5 = %arg0) -> (tensor<?xf32>) {
      scf.yield %arg0 : tensor<?xf32>
    }
    return %0 : tensor<?xf32>
  }
}

