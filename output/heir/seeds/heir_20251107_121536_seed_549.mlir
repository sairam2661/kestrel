"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecretsecret, !secretsecretsecret, !secretsecretsecret, !secretsecretsecret, i16, i16, i16) -> (!secretsecretsecret, i16), sym_name = "mixed_secret_and_arith"}> ({
  ^bb0(%arg0: !secretsecretsecret, %arg1: !secretsecretsecret, %arg2: !secretsecretsecret, %arg3: !secretsecretsecret, %arg4: i16, %arg5: i16, %arg6: i16):
    %0 = "arith.constant"() <{value = 10 : i16}> : () -> i16
    %1 = "arith.addi"(%arg4, %0) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
    %2 = "arith.addi"(%arg5, %0) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
    %3 = "arith.addi"(%arg6, %0) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
    %4:3 = "secret.generic"(%arg0, %arg1, %arg2, %arg3, %1, %2, %3) ({
    ^bb0(%arg7: i16, %arg8: i16, %arg9: i16, %arg10: i16, %arg11: i16, %arg12: i16, %arg13: i16):
      %5 = "arith.cmpi"(%arg7, %arg8, "slt") : (i16, i16) -> i1
      %6 = "arith.cmpi"(%arg9, %arg10, "slt") : (i16, i16) -> i1
      %7 = "arith.cmpi"(%arg11, %arg12, "slt") : (i16, i16) -> i1
      "secret.yield"(%5, %6, %7) : (i1, i1, i1) -> ()
    }) : (!secretsecretsecret, !secretsecretsecret, !secretsecretsecret, !secretsecretsecret, i16, i16, i16) -> (!secretsecretsecret, i16, i1)
    "func.return"(%4#0, %4#1) : (!secretsecretsecret, i16) -> ()
  }) : () -> ()
}) : () -> ()