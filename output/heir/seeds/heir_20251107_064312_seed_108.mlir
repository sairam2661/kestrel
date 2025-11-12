"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret) -> !secretsecret, sym_name = "complex_secret_op"}> ({
  ^bb0(%arg0: !secretsecret):
    %1 = "secret.conceal"() <{value = 42 : i32}> : () -> !secretsecret
    %2 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i32):
      %3 = "arith.muli"(%arg1, %arg1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %4 = "arith.addi"(%3, %1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %5 = "arith.muli"(%4, %1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "secret.yield"(%5) : (i32) -> ()
    }) : (!secretsecret) -> !secretsecret
    "func.return"(%2) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()