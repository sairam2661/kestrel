"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i16>, !secret.secret<i16>) -> !secret.secret<i16>, sym_name = "add"}> ({
  ^bb0(%arg0: !secret.secret<i16>, %arg1: !secret.secret<i16>):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg2: i16):
      %1 = "arith.addi"(%arg2, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      "secret.yield"(%1) : (i16) -> ()
    }) : (!secret.secret<i16>) -> !secret.secret<i16>
    "func.return"(%0) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) {backend.openfhe, scheme.bfv} : () -> ()

