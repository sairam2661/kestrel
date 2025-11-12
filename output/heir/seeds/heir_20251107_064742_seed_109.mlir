"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, index, i8) -> !secretsecret, sym_name = "fuzz_secret"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: index, %arg2: i8):
    %0 = "arith.addi"(%arg2, %arg2) <{overflowFlags = #arithoverflownone}> : (i8, i8) -> i8
    %1 = "secret.generic"(%arg0, %arg1, %0) ({
    ^bb0(%arg3: !secretsecret, %arg4: index, %arg5: i8):
      %6 = "arith.cmpi"(%arg5, 0, "sgt") : (i8, i8, i1) -> i1
      %7 = "arith.select"(%6, %arg5, 0) : (i1, i8, i8) -> i8
      "secret.yield"(%7) : (i8) -> ()
    }) : (!secretsecret, index) -> !secretsecret
    "func.return"(%1) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()