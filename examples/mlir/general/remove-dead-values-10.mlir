"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> i32, sym_name = "clean_region_branch_op_remove_last_2_results_last_2_arguments_and_last_operand"}> ({
  ^bb0(%arg1: i1):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3:4 = "scf.while"(%0, %1, %2) ({
    ^bb0(%arg6: i32, %arg7: i32, %arg8: i32):
      %5 = "arith.addi"(%arg8, %arg8) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %6 = "func.call"(%arg8) <{callee = @identity}> : (i32) -> i32
      "scf.condition"(%arg1, %arg7, %arg6, %5, %6) : (i1, i32, i32, i32, i32) -> ()
    }, {
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32):
      %4 = "arith.addi"(%arg4, %arg5) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"(%arg2, %arg3, %4) : (i32, i32, i32) -> ()
    }) : (i32, i32, i32) -> (i32, i32, i32, i32)
    "func.return"(%3#0) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "identity", sym_visibility = "private"}> ({
  ^bb0(%arg0: i32):
    "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

