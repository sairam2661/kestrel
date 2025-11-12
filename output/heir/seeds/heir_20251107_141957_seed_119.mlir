"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, !secretsecret, !secretsecret, !secretsecret) -> !secretsecret, sym_name = "multi_op_chain"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !secretsecret, %arg2: !secretsecret, %arg3: !secretsecret):
    %0 = "secret.generic"(%arg0, %arg1, %arg2, %arg3) ({
    ^bb0(%arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32):
      %1 = "arith.muli"(%arg4, %arg5) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %2 = "arith.addi"(%1, %arg6) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %3 = "arith.addi"(%2, %arg7) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %4 = "arith.cmpi"(%3, %arg4, "eq") <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i1
      %5 = "arith.cmpi"(%3, %arg5, "ne") <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i1
      %6 = "arith.select"(%4, %3, %arg6) <{overflowFlags = #arithoverflownone}> : (i1, i32, i32) -> i32
      %7 = "arith.muli"(%6, %arg7) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "secret.yield"(%7) : (i32) -> ()
    }) : (!secretsecret, !secretsecret, !secretsecret, !secretsecret) -> !secretsecret
    "func.return"(%0) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()