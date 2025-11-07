"builtin.module"() ({
  "func.func"() <{function_type = (i3) -> !secret.secret<i3>, sym_name = "conceal"}> ({
  ^bb0(%arg0: i3):
    %0 = "secret.conceal"(%arg0) : (i3) -> !secret.secret<i3>
    "func.return"(%0) : (!secret.secret<i3>) -> ()
  }) : () -> ()
}) : () -> ()

