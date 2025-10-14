module {
  func.func @loop_unroll_static_yield_value_defined_above(%arg0: i32) {
    %c42_i32 = arith.constant 42 : i32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c4 = arith.constant 4 : index
    %0:2 = scf.for %arg1 = %c0 to %c4 step %c1 iter_args(%arg2 = %c42_i32, %arg3 = %arg0) -> (i32, i32) {
      %1 = arith.andi %arg3, %arg2 : i32
      scf.yield %1, %arg0 : i32, i32
    }
    return
  }
}

