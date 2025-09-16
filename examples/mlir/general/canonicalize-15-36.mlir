"builtin.module"() ({
  "func.func"() <{function_type = (i32, index, index, index) -> i32, sym_name = "fold_away_iter_and_result_with_no_use"}> ({
  ^bb0(%arg0: i32, %arg1: index, %arg2: index, %arg3: index):
    %0 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %1:2 = "scf.for"(%arg2, %arg1, %arg3, %arg0, %0) ({
    ^bb0(%arg4: index, %arg5: i32, %arg6: i32):
      %2 = "arith.addi"(%arg5, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"(%2, %2) : (i32, i32) -> ()
    }) : (index, index, index, i32, i32) -> (i32, i32)
    "func.return"(%1#0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

