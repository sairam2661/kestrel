"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, i32, i16) -> i32, sym_name = "unusual_secret_flow"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i32, %arg2: i16):
    %3 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 2 : i16}> : () -> i16
    %5 = "secret.conceal"(%arg0) : (!secretsecret) -> !secretsecret
    %6 = "arith.addi"(%arg1, %3) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %7 = "arith.muli"(%arg2, %4) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
    %8 = "arith.select"(%7, %arg1, %6) <{predicate = "eq"}> : (i16, i32, i32) -> i32
    "func.return"(%8) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secretsecret, !secretsecret) -> !secretsecret, sym_name = "secret_addition"}> ({
  ^bb0(%arg3: !secretsecret, %arg4: !secretsecret):
    %5 = "secret.generic"(%arg3, %arg4) ({
    ^bb0(%arg5: i32, %arg6: i32):
      %7 = "arith.addi"(%arg5, %arg6) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "secret.yield"(%7) : (i32) -> ()
    }) : (!secretsecret, !secretsecret) -> !secretsecret
    "func.return"(%5) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()