"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (!secretsecret) -> !secretsecret, sym_name = "fuzz_test"}> ({
  ^bb0(%arg0: !secretsecret):
    %0 = "secret.conceal"(%arg0) : (!secretsecret) -> !secretsecret
    %1 = "secret.generic"(%0) ({
    ^bb1(%arg1: !secretsecret):
      %2 = "secret.conceal"(%arg1) : (!secretsecret) -> !secretsecret
      %3 = "secret.generic"(%2) ({
      ^bb2(%arg2: !secretsecret):
        %4 = "secret.conceal"(%arg2) : (!secretsecret) -> !secretsecret
        "secret.yield"(%4) : (!secretsecret) -> ()
      }) : (!secretsecret) -> !secretsecret
      "secret.yield"(%3) : (!secretsecret) -> ()
    }) : (!secretsecret) -> !secretsecret
    "func.return"(%1) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()