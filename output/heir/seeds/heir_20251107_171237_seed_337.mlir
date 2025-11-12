"builtin.module"() ({
  "func.func"() <{function_type = (i32, !secret_secret) -> (!secret_secret), sym_name = "process_data"}> ({
  ^bb0(%arg0: i32, %arg1: !secret_secret):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0) <{predicate = "sgt"}> : (i32, i32) -> i1
    %2 = "arith.select"(%1, %arg0, %0) <{fastmath = #arith_fastmathnone}> : (i1, i32, i32) -> i32
    %3 = "secret.generic"(%arg1) ({
    ^bb0(%arg4: i32):
      %4 = "arith.addi"(%arg4, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "secret.yield"(%4) : (i32) -> ()
    }) : (!secret_secret) -> !secret_secret
    "func.return"(%3) : (!secret_secret) -> ()
  }) : () -> ()
}) : () -> ()