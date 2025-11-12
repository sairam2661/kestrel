"builtin.module"() ({
  "func.func"() <{function_type = (i32, !secretsecret) -> (!secretsecret, i32), sym_name = "complex_interaction"}> ({
  ^bb0(%arg0: i32, %arg1: !secretsecret):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %2 = "secret.generic"(%arg1, %1) ({
    ^bb0(%arg2: !secretsecret, %arg3: i32):
      %3 = "arith.muli"(%arg3, %arg3) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %4 = "arith.cmpi"(%arg3, %0) <{predicate = "sgt"}> : (i32, i32) -> i1
      %5 = "arith.select"(%4, %arg3, %0) <{predicate = "slt"}> : (i1, i32, i32) -> i32
      "secret.yield"(%5) : (i32) -> ()
    }) : (!secretsecret, i32) -> !secretsecret
    %6 = "arith.muli"(%1, %1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    "func.return"(%2, %6) : (!secretsecret, i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secretsecret) -> (!secretsecret), sym_name = "nested_secret"}> ({
  ^bb0(%arg0: !secretsecret):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: !secretsecret):
      %2 = "secret.generic"(%arg1) ({
      ^bb0(%arg3: !secretsecret):
        "secret.yield"(%arg3) : (!secretsecret) -> ()
      }) : (!secretsecret) -> !secretsecret
      "secret.yield"(%2) : (!secretsecret) -> ()
    }) : (!secretsecret) -> !secretsecret
    "func.return"(%0) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()