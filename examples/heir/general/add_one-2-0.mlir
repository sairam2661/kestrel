"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i8>) -> !secret.secret<i8>, sym_name = "add_one"}> ({
  ^bb0(%arg0: !secret.secret<i8>):
    %0 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %1 = "secret.generic"(%arg0, %0) ({
    ^bb0(%arg1: i8, %arg2: i8):
      %2 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i8, i8) -> i8
      "secret.yield"(%2) : (i8) -> ()
    }) : (!secret.secret<i8>, i8) -> !secret.secret<i8>
    "func.return"(%1) : (!secret.secret<i8>) -> ()
  }) : () -> ()
}) : () -> ()

