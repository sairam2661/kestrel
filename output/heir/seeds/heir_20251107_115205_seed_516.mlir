"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, i32) -> (!secretsecret, i32), sym_name = "nested_generic"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i32):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %2 = "arith.muli"(%1, %arg3) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %3 = "secret.generic"(%arg2, %2) ({
      ^bb0(%arg4: i32, %arg5: i32):
        %6 = "arith.addi"(%arg4, %arg5) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
        "secret.yield"(%6) : (i32) -> ()
      }) : (!secretsecret, i32) -> !secretsecret
      "secret.yield"(%3, %2) : (i32, i32) -> ()
    }) : (!secretsecret, i32) -> (!secretsecret, i32)
    "func.return"(%0) : (!secretsecret, i32) -> ()
  }) : () -> ()
}) : () -> ()