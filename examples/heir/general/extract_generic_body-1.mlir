"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (), sym_name = "test_multiple"}> ({
  ^bb0(%arg0: i32):
    %0 = "secret.conceal"(%arg0) : (i32) -> !secret.secret<i32>
    %1 = "secret.generic"(%0) ({
    ^bb0(%arg2: i32):
      %5 = "arith.constant"() <{value = 7 : i32}> : () -> i32
      %6 = "arith.addi"(%5, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%6) : (i32) -> ()
    }) : (!secret.secret<i32>) -> !secret.secret<i32>
    %2 = "secret.generic"(%1) ({
    ^bb0(%arg1: i32):
      %3 = "arith.constant"() <{value = 12 : i32}> : () -> i32
      %4 = "arith.addi"(%3, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%4) : (i32) -> ()
    }) : (!secret.secret<i32>) -> !secret.secret<i32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

