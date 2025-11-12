"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, i32) -> (!secretsecret, i32), sym_name = "complex_flow"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1:2 = "secret.generic"(%arg0, %0) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %5 = "arith.muli"(%4, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "secret.yield"(%5, %5) : (i32, i32) -> ()
    }) : (!secretsecret, i32) -> (!secretsecret, i32)
    %6:2 = "scf.for"() <{lowerBound = 0 : i32, upperBound = 10 : i32, step = 1 : i32}> ({
    ^bb0(%arg4: i32):
      %7 = "arith.addi"(%arg4, %arg1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %8 = "arith.muli"(%7, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %9 = "scf.yield"(%8) : (i32) -> ()
    }) : () -> i32
    "func.return"(%1#0, %6) : (!secretsecret, i32) -> ()
  }) : () -> ()
}) : () -> ()