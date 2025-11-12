"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret) -> !secretsecret, sym_name = "nested_secret_generic"}> ({
  ^bb0(%arg0: !secretsecret):
    %0 = "secret.generic"(%arg0) ({
    ^bb1(%arg1: !secretsecret):
      %1 = "secret.generic"(%arg1) ({
      ^bb2(%arg2: !secretsecret):
        %2 = "secret.generic"(%arg2) ({
        ^bb3(%arg3: !secretsecret):
          %3 = "secret.generic"(%arg3) ({
          ^bb4(%arg4: !secretsecret):
            "secret.yield"(%arg4) : (!secretsecret) -> ()
          }) : (!secretsecret) -> !secretsecret
          "secret.yield"(%arg3) : (!secretsecret) -> ()
        }) : (!secretsecret) -> !secretsecret
        "secret.yield"(%arg2) : (!secretsecret) -> ()
      }) : (!secretsecret) -> !secretsecret
      "secret.yield"(%arg1) : (!secretsecret) -> ()
    }) : (!secretsecret) -> !secretsecret
    "func.return"(%0) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()