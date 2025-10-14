module {
  func.func @static_loop_unroll_with_integer_iv() -> (f32, f32) {
    %cst = arith.constant 7.000000e+00 : f32
    %c0_i32 = arith.constant 0 : i32
    %c20_i32 = arith.constant 20 : i32
    %c1_i32 = arith.constant 1 : i32
    %0:2 = scf.for %arg0 = %c0_i32 to %c20_i32 step %c1_i32 iter_args(%arg1 = %cst, %arg2 = %cst) -> (f32, f32)  : i32 {
      %1 = arith.addf %arg1, %arg2 : f32
      %2 = arith.mulf %arg1, %arg2 : f32
      scf.yield %1, %2 : f32, f32
    }
    return %0#0, %0#1 : f32, f32
  }
}

