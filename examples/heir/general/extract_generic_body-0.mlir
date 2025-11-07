"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (), sym_name = "test_add"}> ({
  ^bb0(%arg0: i32):
    %0 = "secret.conceal"(%arg0) : (i32) -> !secret.secret<i32>
    %1 = "secret.generic"(%0) ({
    ^bb0(%arg1: i32):
      %2 = "arith.constant"() <{value = 7 : i32}> : () -> i32
      %3 = "arith.addi"(%2, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%3) : (i32) -> ()
    }) : (!secret.secret<i32>) -> !secret.secret<i32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

