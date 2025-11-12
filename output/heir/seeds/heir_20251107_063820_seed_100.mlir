"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_ops, i32, i32) -> (i32, i32), sym_name = "complex_ssa_example"}> ({
  ^bb0(%arg0: !secret_secret_ops, %arg1: i32, %arg2: i32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32

    %0 = "secret.generic"(%arg0) ({
    ^bb0(%secret_arg: i32):
      %1 = "arith.addi"(%secret_arg, %c1_i32) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "secret.yield"(%1) : (i32) -> ()
    }) : (!secret_secret_ops) -> !secret_secret_ops

    %2 = "scf.for"(%c0_i32, %c2_i32) <{step = 1 : i32}> ({
    ^bb0(%iv: i32):
      %3 = "arith.addi"(%iv, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4 = "arith.addi"(%arg2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (i32) -> i32

    "func.return"(%2, %2) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()