"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret) -> !secretsecret, sym_name = "deep_nested"}> ({
  ^bb0(%arg0: !secretsecret):
    %0 = "secret.generic"(%arg0) ({
    ^bb1(%arg1: i32):
      %1 = "arith.constant"() <{value = 42}> : () -> i32
      %2 = "arith.addi"(%arg1, %1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %3 = "secret.generic"(%2) ({
      ^bb2(%arg3: i32):
        %4 = "arith.muli"(%arg3, %arg1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
        %5 = "arith.addi"(%4, %1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
        "secret.yield"(%5) : (i32) -> ()
      }) : (i32) -> !secretsecret
      "secret.yield"(%3) : (i32) -> ()
    }) : (!secretsecret) -> !secretsecret
    "func.return"(%0) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()