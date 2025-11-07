"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i16>, !secret.secret<i1>) -> !secret.secret<i16>, sym_name = "conditionally_speculative_code"}> ({
  ^bb0(%arg0: !secret.secret<i16>, %arg1: !secret.secret<i1>):
    %0 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %1 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i16, %arg3: i1):
      %2 = "scf.if"(%arg3) ({
        %3 = "arith.divui"(%arg2, %0) : (i16, i16) -> i16
        "scf.yield"(%3) : (i16) -> ()
      }, {
        "scf.yield"(%arg2) : (i16) -> ()
      }) : (i1) -> i16
      "secret.yield"(%2) : (i16) -> ()
    }) : (!secret.secret<i16>, !secret.secret<i1>) -> !secret.secret<i16>
    "func.return"(%1) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

