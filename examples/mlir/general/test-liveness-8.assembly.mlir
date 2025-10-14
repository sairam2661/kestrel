module {
  func.func @nested_region4(%arg0: index, %arg1: index, %arg2: index) {
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %0 = scf.for %arg3 = %arg0 to %arg1 step %arg2 iter_args(%arg4 = %c0_i32) -> (i32) {
      %1 = arith.addi %arg4, %c1_i32 : i32
      scf.yield %1 : i32
    }
    return
  }
}

