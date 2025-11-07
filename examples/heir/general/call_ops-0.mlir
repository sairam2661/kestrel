"builtin.module"() ({
  "func.func"() <{function_type = (i8) -> i8, sym_name = "submod"}> ({
  ^bb0(%arg2: i8):
    %2 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %3 = "arith.addi"(%arg2, %2) <{overflowFlags = #arith.overflow<none>}> : (i8, i8) -> i8
    "func.return"(%3) : (i8) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<i8>) -> !secret.secret<i8>, sym_name = "main"}> ({
  ^bb0(%arg0: !secret.secret<i8>):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i8):
      %1 = "func.call"(%arg1) <{callee = @submod}> : (i8) -> i8
      "secret.yield"(%1) : (i8) -> ()
    }) : (!secret.secret<i8>) -> !secret.secret<i8>
    "func.return"(%0) : (!secret.secret<i8>) -> ()
  }) : () -> ()
}) : () -> ()

