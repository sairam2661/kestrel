"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, !tfhe_rusttfhe) -> (!secretsecret, !tfhe_rusttfhe), sym_name = "mixed_dialects"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !tfhe_rusttfhe):
    %0 = "secret.conceal"(%arg0) <{type = "ui32"}> : (!secretsecret) -> !tfhe_rusttfhe
    %1 = "tfhe_rust.decrypt"(%0) : (!tfhe_rusttfhe) -> !secretsecret
    %2 = "secret.generic"(%1) ({
    ^bb0(%arg2: !secretsecret):
      %3 = "tfhe_rust.encrypt"(%arg2) : (!secretsecret) -> !tfhe_rusttfhe
      %4 = "tfhe_rust.decrypt"(%3) : (!tfhe_rusttfhe) -> !secretsecret
      "secret.yield"(%4) : (!secretsecret) -> ()
    }) : (!secretsecret) -> !secretsecret
    "func.return"(%2, %arg1) : (!secretsecret, !tfhe_rusttfhe) -> ()
  }) : () -> ()
}) : () -> ()