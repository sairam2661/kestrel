"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (), sym_name = "test_conceal_then_generic"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %1 = "secret.conceal"(%arg0) : (i32) -> !secret.secret<i32>
    %2 = "secret.generic"(%0, %1) ({
    ^bb0(%arg1: i32, %arg2: i32):
      %3 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%3) : (i32) -> ()
    }) : (i32, !secret.secret<i32>) -> !secret.secret<i32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

