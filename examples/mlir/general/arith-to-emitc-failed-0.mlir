"builtin.module"() ({
  "func.func"() <{function_type = (i1, i1) -> (), sym_name = "bool"}> ({
  ^bb0(%arg0: i1, %arg1: i1):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i1, i1) -> i1
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

