"builtin.module"() ({
  "func.func"() <{function_type = (i16, !secret.secret<i1>) -> !secret.secret<i16>, sym_name = "secret_condition_with_non_secret_int"}> ({
  ^bb0(%arg0: i16, %arg1: !secret.secret<i1>):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i16, %arg3: i1):
      %1 = "scf.if"(%arg3) ({
        %2 = "arith.addi"(%arg2, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
        "scf.yield"(%2) : (i16) -> ()
      }, {
        "scf.yield"(%arg2) : (i16) -> ()
      }) : (i1) -> i16
      "secret.yield"(%1) : (i16) -> ()
    }) : (i16, !secret.secret<i1>) -> !secret.secret<i16>
    "func.return"(%0) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

