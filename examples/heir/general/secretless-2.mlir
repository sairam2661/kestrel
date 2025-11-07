"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i2>) -> !secret.secret<i2>, sym_name = "no_conceal"}> ({
  ^bb0(%arg0: !secret.secret<i2>):
    %0 = "arith.constant"() <{value = -1 : i2}> : () -> i2
    %1 = "secret.conceal"(%0) : (i2) -> !secret.secret<i2>
    %2 = "secret.generic"(%arg0, %1) ({
    ^bb0(%arg1: i2, %arg2: i2):
      %3 = "arith.muli"(%arg1, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i2, i2) -> i2
      "secret.yield"(%3) : (i2) -> ()
    }) : (!secret.secret<i2>, !secret.secret<i2>) -> !secret.secret<i2>
    "func.return"(%2) : (!secret.secret<i2>) -> ()
  }) : () -> ()
}) : () -> ()

