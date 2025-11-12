"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret, i32) -> (i32, !secret_secret), sym_name = "mixed_secret_nonsecret"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: i32):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %2 = "arith.cmpi"(%1, %arg3) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %3 = "comb.truth_table"(%2) <{table = [0, 1, 1, 0]}> : (i1) -> i1
      %4 = "secret.conceal"(%3) : (i1) -> !secret_secret
      "secret.yield"(%1, %4) : (i32, !secret_secret) -> ()
    }) : (!secret_secret, i32) -> (i32, !secret_secret)
    "func.return"(%0) : (i32, !secret_secret) -> ()
  }) : () -> ()
}) : () -> ()