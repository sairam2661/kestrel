"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i1>) -> !secret.secret<i1>, sym_name = "truth_table"}> ({
  ^bb0(%arg0: !secret.secret<i1>):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i1):
      "secret.yield"(%arg1) : (i1) -> ()
    }) : (!secret.secret<i1>) -> !secret.secret<i1>
    "func.return"(%0) : (!secret.secret<i1>) -> ()
  }) : () -> ()
}) : () -> ()

