"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret, !secret_secret) -> !secret_secret, sym_name = "dual_op_secret"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: !secret_secret):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %2 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %3 = "arith.muli"(%2, %2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %4 = "arith.select"(%2, %3, %arg3) <{trueCondition = true}> : (i32, i32, i32) -> i32
      "secret.yield"(%4) : (i32) -> ()
    }) : (!secret_secret, !secret_secret) -> !secret_secret
    "func.return"(%1) : (!secret_secret) -> ()
  }) : () -> ()
}) : () -> ()