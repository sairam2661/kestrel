"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i32>, !secret.secret<i32>, !secret.secret<i32>) -> !secret.secret<i32>, sym_name = "test_unshared_input"}> ({
  ^bb0(%arg0: !secret.secret<i32>, %arg1: !secret.secret<i32>, %arg2: !secret.secret<i32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "secret.generic"(%arg0) ({
    ^bb0(%arg5: i32):
      %4 = "arith.addi"(%arg5, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%4) : (i32) -> ()
    }) : (!secret.secret<i32>) -> !secret.secret<i32>
    %2 = "secret.generic"(%arg1, %arg2) ({
    ^bb0(%arg3: i32, %arg4: i32):
      %3 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%3) : (i32) -> ()
    }) : (!secret.secret<i32>, !secret.secret<i32>) -> !secret.secret<i32>
    "func.return"(%2) : (!secret.secret<i32>) -> ()
  }) : () -> ()
}) : () -> ()

