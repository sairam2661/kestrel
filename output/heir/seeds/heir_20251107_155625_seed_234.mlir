"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_i32, !secret_secret_i32, !secret_secret_i32) -> !secret_secret_i32, sym_name = "complex_tensor_ops"}> ({
  ^bb0(%arg0: !secret_secret_i32, %arg1: !secret_secret_i32, %arg2: !secret_secret_i32):
    %0 = "secret.generic"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg4: i32, %arg5: i32, %arg6: i32):
      %1 = "arith.cmpi"(%arg4, %arg5, "slt") : (i32, i32) -> i1
      %2 = "arith.select"(%1, %arg5, %arg4) : (i1, i32, i32) -> i32
      %3 = "arith.addi"(%arg6, %2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "secret.yield"(%3) : (i32) -> ()
    }) : (!secret_secret_i32, !secret_secret_i32, !secret_secret_i32) -> !secret_secret_i32
    "func.return"(%0) : (!secret_secret_i32) -> ()
  }) : () -> ()
}) : () -> ()