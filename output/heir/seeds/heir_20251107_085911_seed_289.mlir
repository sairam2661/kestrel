"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (!secretsecret, !secretsecret) -> !secretsecret, sym_name = "nested_conceal"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !secretsecret):
    %0 = "secret.generic"(%arg0) ({
    ^bb1(%arg2: i16):
      %1 = "arith.addi"(%arg2, %2) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
      %2 = "secret.conceal"(%1) : (i16) -> !secretsecret
      "secret.yield"(%2) : (!secretsecret) -> ()
    }) : (!secretsecret) -> !secretsecret
    "func.return"(%0) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()