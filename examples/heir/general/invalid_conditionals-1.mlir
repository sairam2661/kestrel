"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i16>, !secret.secret<i16>) -> !secret.secret<i16>, sym_name = "non_speculative_code"}> ({
  ^bb0(%arg0: !secret.secret<i16>, %arg1: !secret.secret<i16>):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i16, %arg3: i16):
      %1 = "arith.constant"() <{value = 0 : i16}> : () -> i16
      %2 = "arith.cmpi"(%1, %arg3) <{predicate = 0 : i64}> : (i16, i16) -> i1
      %3 = "scf.if"(%2) ({
        %4 = "arith.divui"(%arg2, %arg3) : (i16, i16) -> i16
        "scf.yield"(%4) : (i16) -> ()
      }, {
        "scf.yield"(%arg2) : (i16) -> ()
      }) : (i1) -> i16
      "secret.yield"(%3) : (i16) -> ()
    }) : (!secret.secret<i16>, !secret.secret<i16>) -> !secret.secret<i16>
    "func.return"(%0) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

