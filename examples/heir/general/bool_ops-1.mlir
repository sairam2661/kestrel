"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i1>, i1) -> !secret.secret<i1>, sym_name = "boolean_gates_partial_secret"}> ({
  ^bb0(%arg0: !secret.secret<i1>, %arg1: i1):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i1, %arg3: i1):
      %1 = "comb.and"(%arg2, %arg3) : (i1, i1) -> i1
      "secret.yield"(%1) : (i1) -> ()
    }) : (!secret.secret<i1>, i1) -> !secret.secret<i1>
    "func.return"(%0) : (!secret.secret<i1>) -> ()
  }) : () -> ()
}) : () -> ()

