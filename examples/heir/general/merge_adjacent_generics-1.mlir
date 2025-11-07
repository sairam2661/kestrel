"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i32>, !secret.secret<i32>, !secret.secret<i32>) -> !secret.secret<i32>, sym_name = "test_shared_input"}> ({
  ^bb0(%arg0: !secret.secret<i32>, %arg1: !secret.secret<i32>, %arg2: !secret.secret<i32>):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg5: i32, %arg6: i32):
      %3 = "arith.addi"(%arg5, %arg6) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%3) : (i32) -> ()
    }) : (!secret.secret<i32>, !secret.secret<i32>) -> !secret.secret<i32>
    %1 = "secret.generic"(%arg1, %arg2) ({
    ^bb0(%arg3: i32, %arg4: i32):
      %2 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%2) : (i32) -> ()
    }) : (!secret.secret<i32>, !secret.secret<i32>) -> !secret.secret<i32>
    "func.return"(%1) : (!secret.secret<i32>) -> ()
  }) : () -> ()
}) : () -> ()

