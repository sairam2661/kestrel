"builtin.module"() ({
  "func.func"() <{function_type = (!tfhe_rustencrypted, i32, !secretsecret) -> (!tfhe_rustencrypted, i32), sym_name = "complex_mix"}> ({
  ^bb0(%arg0: !tfhe_rustencrypted, %arg1: i32, %arg2: !secretsecret):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %0, "slt") : (i32, i32) -> i1
    %3 = "arith.select"(%2, %arg1, %0) : (i1, i32, i32) -> i32
    %4 = "secret.generic"(%arg2) ({
    ^bb0(%arg3: i32):
      %5 = "arith.addi"(%arg3, %1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "secret.yield"(%5) : (i32) -> ()
    }) : (!secretsecret) -> !secretsecret
    "func.return"(%arg0, %3) : (!tfhe_rustencrypted, i32) -> ()
  }) : () -> ()
}) : () -> ()