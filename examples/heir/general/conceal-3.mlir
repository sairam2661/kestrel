"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> !secret.secret<i1>, sym_name = "conceal_i1"}> ({
  ^bb0(%arg0: i1):
    %0 = "secret.conceal"(%arg0) : (i1) -> !secret.secret<i1>
    "func.return"(%0) : (!secret.secret<i1>) -> ()
  }) : () -> ()
}) : () -> ()

