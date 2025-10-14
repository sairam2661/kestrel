module {
  func.func @legal_params_for_loop(%arg0: i32, %arg1: i32, %arg2: i32) -> i32 {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = arith.index_cast %arg2 : i32 to index
    %1 = scf.for %arg3 = %c0 to %0 step %c1 iter_args(%arg4 = %arg0) -> (i32) {
      %2 = arith.addi %arg4, %arg1 : i32
      scf.yield %2 : i32
    }
    return %1 : i32
  }
}

