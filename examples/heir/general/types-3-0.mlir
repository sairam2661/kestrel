"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i1>) -> !secret.secret<i1>, sym_name = "types"}> ({
  ^bb0(%arg1: !secret.secret<i1>):
    "func.return"(%arg1) : (!secret.secret<i1>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<i8>) -> !secret.secret<i8>, sym_name = "multi"}> ({
  ^bb0(%arg0: !secret.secret<i8>):
    "func.return"(%arg0) : (!secret.secret<i8>) -> ()
  }) : () -> ()
}) : () -> ()

