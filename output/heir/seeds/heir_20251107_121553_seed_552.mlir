"builtin.module"() ({
  "func.func"() <{function_type = (index, i32) -> i32, sym_name = "mixed_type_sum_and_conceal"}> ({
  ^bb0(%arg0: index, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "secret.conceal"(%1) : (i32) -> !secret
    "func.return"(%2) : (!secret) -> ()
  }) : () -> ()
}) : () -> ()