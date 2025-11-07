"builtin.module"() ({
  "func.func"() <{function_type = (i16, i16, i16, i16) -> i16, sym_name = "no_balance_add_tree"}> ({
  ^bb0(%arg0: i16, %arg1: i16, %arg2: i16, %arg3: i16):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %1 = "arith.addi"(%0, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %2 = "arith.addi"(%1, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    "func.return"(%2) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

