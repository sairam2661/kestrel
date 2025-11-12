"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, !secretsecret, !secretsecret) -> (!secretsecret, !secretsecret), sym_name = "complex_secret_operations"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !secretsecret, %arg2: !secretsecret):
    %0:2 = "secret.generic"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: i16, %arg4: i16, %arg5: i16):
      %1 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
      %2 = "arith.mul"(%1, %arg5) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
      %3 = "secret.conceal"(%2) : (i16) -> !secretsecret
      "secret.yield"(%3, %2) : (!secretsecret, i16) -> ()
    }) : (!secretsecret, !secretsecret, !secretsecret) -> (!secretsecret, i16)
    "func.return"(%0#0, %0#1) : (!secretsecret, !secretsecret) -> ()
  }) : () -> ()
}) : () -> ()