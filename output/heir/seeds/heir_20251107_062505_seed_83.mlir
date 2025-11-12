"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, i32) -> !secretsecret, sym_name = "test_secret_generic_nested"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i32):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg2: i32):
      %1 = "arith.muli"(%arg2, %arg2) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %2 = "secret.generic"(%1) ({
      ^bb0(%arg3: i32):
        %3 = "arith.addi"(%arg3, %arg1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
        "secret.yield"(%3) : (i32) -> ()
      }) : (i32) -> !secretsecret
      "secret.yield"(%2) : (!secretsecret) -> ()
    }) : (!secretsecret) -> !secretsecret
    "func.return"(%0) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()