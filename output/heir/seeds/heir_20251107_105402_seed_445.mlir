"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, !secretsecret) -> !secretsecret, sym_name = "complex_secret_op"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !secretsecret):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg2: i16):
      %1 = "arith.muli"(%arg2, %arg2) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
      %2 = "arith.addi"(%1, %1) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
      %3 = "scf.for"(%2) <{lb = 0 : i16, ub = 3 : i16, step = 1 : i16}> ({
      ^bb1(%iv: i16):
        %4 = "arith.addi"(%iv, %2) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
        %5 = "arith.muli"(%4, %4) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
        "scf.yield"(%5) : (i16) -> ()
      }) : (i16) -> ()
      "secret.yield"(%3) : (i16) -> ()
    }) : (!secretsecret) -> !secretsecret
    %0 = "secret.generic"(%arg1) ({
    ^bb0(%arg3: i16):
      %1 = "arith.muli"(%arg3, %arg3) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
      %2 = "arith.addi"(%1, %1) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
      %3 = "scf.for"(%2) <{lb = 0 : i16, ub = 5 : i16, step = 1 : i16}> ({
      ^bb1(%iv: i16):
        %4 = "arith.addi"(%iv, %2) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
        %5 = "arith.muli"(%4, %4) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
        "scf.yield"(%5) : (i16) -> ()
      }) : (i16) -> ()
      "secret.yield"(%3) : (i16) -> ()
    }) : (!secretsecret) -> !secretsecret
    %5 = "arith.addi"(%0, %0) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
    %6 = "arith.addi"(%0, %5) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
    %7 = "arith.addi"(%6, %0) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
    "func.return"(%7) : (i16) -> ()
  }) : () -> ()
}) : () -> ()