"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, !secretsecret) -> !secretsecret, sym_name = "complex.operation.sequence"}> ({
    ^bb0(%arg0: !secretsecret, %arg1: !secretsecret):
      %0 = "arith.constant"() <{value = true}> : () -> i1
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
      %2 = "arith.cmpi"(%1, %arg0) <{predicate = 4 : i64}> : (i16, i16) -> i1
      %3 = "arith.select"(%0, %1, %arg1) : (i1, i16, i16) -> i16
      %4 = "secret.conceal"(%3) : (i16) -> !secretsecret
      %5 = "arith.constant"() <{value = 16 : i32}> : () -> i32
      %6 = "arith.constant"() <{value = 32 : i32}> : () -> i32
      %7 = "arith.addi"(%5, %6) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %8 = "tfhe_rust.generic"(%arg0, %arg1, %7, %3) ({
        ^bb0(%arg2: i16, %arg3: i16, %arg4: i32, %arg5: i16):
          %9 = "arith.subi"(%arg3, %arg2) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
          %10 = "arith.muli"(%arg5, %arg9) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
          "tfhe_rust.yield"(%10) : (i16) -> ()
      }) : (!secretsecret, !secretsecret, i32, i16) -> !secretsecret
      "func.return"(%8) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()