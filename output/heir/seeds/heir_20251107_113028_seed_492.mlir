"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, !secretsecret, !secretsecret, !secretsecret) -> !secretsecret, sym_name = "nested_secret_operations"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !secretsecret, %arg2: !secretsecret, %arg3: !secretsecret):
    %0:2 = "secret.generic"(%arg0, %arg1, %arg2, %arg3) ({
    ^bb0(%arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32):
      %1 = "arith.addi"(%arg4, %arg5) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %2 = "arith.muli"(%1, %arg6) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %3 = "arith.addi"(%2, %arg7) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %4 = "secret.generic"(%arg4, %arg5) ({
      ^bb1(%arg8: i32, %arg9: i32):
        %5 = "arith.muli"(%arg8, %arg9) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
        "secret.yield"(%5) : (i32) -> ()
      }) : (!secretsecret, !secretsecret) -> !secretsecret
      "secret.yield"(%3, %4) : (i32, !secretsecret) -> ()
    }) : (!secretsecret, !secretsecret, !secretsecret, !secretsecret) -> (!secretsecret, i32)
    "func.return"(%0#0) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()