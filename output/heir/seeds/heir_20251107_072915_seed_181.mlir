"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, !secretsecret, i16, i16) -> i16, sym_name = "secret_add_mult_tree"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !secretsecret, %arg2: i16, %arg3: i16):
    %0 = "secret.generic"(%arg0, %arg1, %arg2, %arg3) ({
    ^bb0(%arg4: i16, %arg5: i16, %arg6: i16, %arg7: i16):
      %1 = "arith.addi"(%arg4, %arg5) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
      %2 = "arith.mul"(%1, %arg6) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
      %3 = "arith.addi"(%2, %arg7) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
      "secret.yield"(%3) : (i16) -> ()
    }) : (!secretsecret, !secretsecret, i16, i16) -> i16
    "func.return"(%0) : (i16) -> ()
  }) : () -> ()
}) : () -> ()