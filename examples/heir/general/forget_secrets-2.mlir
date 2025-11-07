"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i32>) -> !secret.secret<i32>, sym_name = "test_function_signature"}> ({
  ^bb0(%arg0: !secret.secret<i32>):
    "func.return"(%arg0) : (!secret.secret<i32>) -> ()
  }) : () -> ()
}) : () -> ()

