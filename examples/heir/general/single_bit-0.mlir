"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i1>) -> !secret.secret<i1>, sym_name = "bits"}> ({
  ^bb0(%arg0: !secret.secret<i1>):
    %0 = "arith.constant"() <{value = true}> : () -> i1
    %1 = "secret.generic"(%arg0, %0) ({
    ^bb0(%arg1: i1, %arg2: i1):
      %2 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i1, i1) -> i1
      "secret.yield"(%2) : (i1) -> ()
    }) : (!secret.secret<i1>, i1) -> !secret.secret<i1>
    "func.return"(%1) : (!secret.secret<i1>) -> ()
  }) : () -> ()
}) : () -> ()

