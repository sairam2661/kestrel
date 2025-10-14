module {
  func.func @clean_region_branch_op_dont_remove_first_2_results_but_remove_first_operand(%arg0: i1, %arg1: i32, %arg2: i32) -> i32 {
    %0:3 = scf.while (%arg3 = %arg1, %arg4 = %arg2) : (i32, i32) -> (i32, i32, i32) {
      %1 = arith.addi %arg4, %arg4 : i32
      %2 = arith.addi %arg3, %arg3 : i32
      scf.condition(%arg0) %1, %arg4, %2 : i32, i32, i32
    } do {
    ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
      %1 = arith.addi %arg4, %arg4 : i32
      scf.yield %arg5, %1 : i32, i32
    }
    return %0#0 : i32
  }
}

