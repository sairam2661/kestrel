"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, !secretsecret) -> !secretsecret, sym_name = "complex_secret_op"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !secretsecret):
    %c0_i16 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %c1_i16 = "arith.constant"() <{value = 1 : i16}> : () -> i16
    %c2_i16 = "arith.constant"() <{value = 2 : i16}> : () -> i16
    %c3_i16 = "arith.constant"() <{value = 3 : i16}> : () -> i16
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i16, %arg3: i16):
      %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
      %2 = "arith.cmpi"(%1, %c2_i16) <{predicate = 0 : i64}> : (i16, i16) -> i1
      %3 = "scf.if"(%2) ({
        %4 = "arith.subi"(%arg2, %arg3) : (i16, i16) -> i16
        "scf.yield"(%4) : (i16) -> ()
      }, {
        "scf.yield"(%c0_i16) : (i16) -> ()
      }) : (i1) -> i16
      %5 = "arith.muli"(%3, %c3_i16) : (i16, i16) -> i16
      "secret.yield"(%5) : (i16) -> ()
    }) : (!secretsecret, !secretsecret) -> !secretsecret
    "func.return"(%0) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()