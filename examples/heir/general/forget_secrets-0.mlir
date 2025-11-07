"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (), sym_name = "test_erase_unused_conceal"}> ({
  ^bb0(%arg0: i32):
    %0 = "secret.conceal"(%arg0) : (i32) -> !secret.secret<i32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

