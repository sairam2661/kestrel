"builtin.module"() ({
  "func.func"() <{function_type = (i1, i32, i32) -> i32, sym_name = "clean_region_branch_op_dont_remove_first_2_results_but_remove_first_operand"}> ({
  ^bb0(%arg0: i1, %arg1: i32, %arg2: i32):
    %0:3 = "scf.while"(%arg1, %arg2) ({
    ^bb0(%arg6: i32, %arg7: i32):
      %2 = "arith.addi"(%arg7, %arg7) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %3 = "arith.addi"(%arg6, %arg6) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.condition"(%arg0, %2, %arg7, %3) : (i1, i32, i32, i32) -> ()
    }, {
    ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
      %1 = "arith.addi"(%arg4, %arg4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"(%arg5, %1) : (i32, i32) -> ()
    }) : (i32, i32) -> (i32, i32, i32)
    "func.return"(%0#0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

