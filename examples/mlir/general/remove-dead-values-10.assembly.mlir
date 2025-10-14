module {
  func.func @clean_region_branch_op_remove_last_2_results_last_2_arguments_and_last_operand(%arg0: i1) -> i32 {
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c2_i32 = arith.constant 2 : i32
    %0:4 = scf.while (%arg1 = %c0_i32, %arg2 = %c1_i32, %arg3 = %c2_i32) : (i32, i32, i32) -> (i32, i32, i32, i32) {
      %1 = arith.addi %arg3, %arg3 : i32
      %2 = func.call @identity(%arg3) : (i32) -> i32
      scf.condition(%arg0) %arg2, %arg1, %1, %2 : i32, i32, i32, i32
    } do {
    ^bb0(%arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32):
      %1 = arith.addi %arg3, %arg4 : i32
      scf.yield %arg1, %arg2, %1 : i32, i32, i32
    }
    return %0#0 : i32
  }
  func.func private @identity(%arg0: i32) -> i32 {
    return %arg0 : i32
  }
}

