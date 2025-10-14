module {
  func.func @fold_away_iter_with_no_use_and_yielded_input(%arg0: i32, %arg1: index, %arg2: index, %arg3: index) -> (i32, i32) {
    %c32_i32 = arith.constant 32 : i32
    %0:2 = scf.for %arg4 = %arg2 to %arg1 step %arg3 iter_args(%arg5 = %arg0, %arg6 = %c32_i32) -> (i32, i32) {
      %1 = arith.addi %arg5, %c32_i32 : i32
      scf.yield %1, %c32_i32 : i32, i32
    }
    return %0#0, %0#1 : i32, i32
  }
}

