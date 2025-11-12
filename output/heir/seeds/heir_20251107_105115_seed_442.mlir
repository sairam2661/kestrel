"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, !secretsecret, i32) -> (i32, i32), sym_name = "complex_op"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !secretsecret, %arg2: i32):
    %0 = "secret.generic"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
      %1 = "arith.cmpi"(%arg3, %arg4, "slt") : (i32, i32) -> i1
      %2 = "arith.select"(%1, %arg4, %arg5) : (i1, i32, i32) -> i32
      %3 = "arith.addi"(%arg5, %2) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %4 = "arith.cmpi"(%3, %arg5, "eq") : (i32, i32) -> i1
      %5 = "arith.select"(%4, %arg3, %arg4) : (i1, i32, i32) -> i32
      "secret.yield"(%3, %5) : (i32, i32) -> ()
    }) : (!secretsecret, !secretsecret, i32) -> (i32, i32)
    "func.return"(%0, %0) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()