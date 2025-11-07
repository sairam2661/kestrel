"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i32>) -> !secret.secret<i32>, sym_name = "test_chained_input_output"}> ({
  ^bb0(%arg0: !secret.secret<i32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "secret.generic"(%arg0) ({
    ^bb0(%arg2: i32):
      %4 = "arith.addi"(%arg2, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%4) : (i32) -> ()
    }) : (!secret.secret<i32>) -> !secret.secret<i32>
    %2 = "secret.generic"(%1) ({
    ^bb0(%arg1: i32):
      %3 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%3) : (i32) -> ()
    }) : (!secret.secret<i32>) -> !secret.secret<i32>
    "func.return"(%2) : (!secret.secret<i32>) -> ()
  }) : () -> ()
}) : () -> ()

