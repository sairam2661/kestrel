module {
  func.func @for_iter_args(%arg0: index, %arg1: index, %arg2: index) -> f32 {
    %cst = arith.constant 0.000000e+00 : f32
    %0:2 = scf.for %arg3 = %arg0 to %arg1 step %arg2 iter_args(%arg4 = %cst, %arg5 = %cst) -> (f32, f32) {
      %1 = arith.addf %arg4, %arg5 : f32
      scf.yield %1, %1 : f32, f32
    }
    return %0#1 : f32
  }
}

