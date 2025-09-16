"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index, index, index) -> (index, index, index, index), sym_name = "replace_duplicate_iter_args"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index):
    %0:4 = "scf.for"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg4, %arg3) ({
    ^bb0(%arg5: index, %arg6: index, %arg7: index, %arg8: index, %arg9: index):
      %1 = "arith.addi"(%arg6, %arg7) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      %2 = "arith.addi"(%arg8, %arg9) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      "scf.yield"(%1, %2, %2, %1) : (index, index, index, index) -> ()
    }) : (index, index, index, index, index, index, index) -> (index, index, index, index)
    "func.return"(%0#0, %0#1, %0#2, %0#3) : (index, index, index, index) -> ()
  }) : () -> ()
}) : () -> ()

