"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i32>, !secret.secret<i32>) -> !secret.secret<i32>, sym_name = "test_add_two_secrets"}> ({
  ^bb0(%arg0: !secret.secret<i32>, %arg1: !secret.secret<i32>):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%1) : (i32) -> ()
    }) : (!secret.secret<i32>, !secret.secret<i32>) -> !secret.secret<i32>
    "func.return"(%0) : (!secret.secret<i32>) -> ()
  }) : () -> ()
}) : () -> ()

