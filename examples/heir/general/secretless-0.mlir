"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i16>) -> !secret.secret<i16>, sym_name = "func"}> ({
  ^bb0(%arg0: !secret.secret<i16>):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i16):
      %1 = "arith.constant"() <{value = 1 : i16}> : () -> i16
      "secret.yield"(%1) : (i16) -> ()
    }) : (!secret.secret<i16>) -> !secret.secret<i16>
    "func.return"(%0) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

