module {
  func.func @hoist_invariant_scf_if_success(%arg0: index, %arg1: index, %arg2: index) -> i32 {
    %c0_i32 = arith.constant 0 : i32
    %c42_i32 = arith.constant 42 : i32
    %true = arith.constant true
    %0 = scf.for %arg3 = %arg0 to %arg1 step %arg2 iter_args(%arg4 = %c0_i32) -> (i32) {
      %1 = scf.if %true -> (i32) {
        %3 = arith.addi %c42_i32, %c42_i32 : i32
        scf.yield %3 : i32
      } else {
        %3 = ub.poison : i32
        scf.yield %3 : i32
      }
      %2 = arith.addi %arg4, %1 : i32
      scf.yield %2 : i32
    }
    return %0 : i32
  }
}

