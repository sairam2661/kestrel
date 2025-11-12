"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, !secretsecret, !secretsecret, !secretsecret, !secretsecret, !secretsecret, !secretsecret) -> !secretsecret, sym_name = "complex_secret_add_tree"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !secretsecret, %arg2: !secretsecret, %arg3: !secretsecret, %arg4: !secretsecret, %arg5: !secretsecret, %arg6: !secretsecret):
    %0 = "secret.generic"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6) ({
    ^bb0(%arg7: !secretsecret, %arg8: !secretsecret, %arg9: !secretsecret, %arg10: !secretsecret, %arg11: !secretsecret, %arg12: !secretsecret, %arg13: !secretsecret):
      %1 = "secret.add"(%arg7, %arg8) : (!secretsecret, !secretsecret) -> !secretsecret
      %2 = "secret.add"(%1, %arg9) : (!secretsecret, !secretsecret) -> !secretsecret
      %3 = "secret.add"(%2, %arg10) : (!secretsecret, !secretsecret) -> !secretsecret
      %4 = "secret.add"(%3, %arg11) : (!secretsecret, !secretsecret) -> !secretsecret
      %5 = "secret.add"(%4, %arg12) : (!secretsecret, !secretsecret) -> !secretsecret
      %6 = "secret.add"(%5, %arg13) : (!secretsecret, !secretsecret) -> !secretsecret
      "secret.yield"(%6) : (!secretsecret) -> ()
    }) : (!secretsecret, !secretsecret, !secretsecret, !secretsecret, !secretsecret, !secretsecret, !secretsecret) -> !secretsecret
    "func.return"(%0) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()