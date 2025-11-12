"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, i16) -> (i16, !secretsecret), sym_name = "complex_secret_flow"}> ({
    ^bb0(%arg0: !secretsecret, %arg1: i16):
      %0 = "arith.constant"() <{value = 42 : i16}> : () -> i16
      %1 = "secret.generic"(%arg0) ({
        ^bb1(%arg2: !secretsecret):
          %2 = "scf.for"() <{lower_bound = 0 : i16, upper_bound = 10 : i16, step = 1 : i16}> ({
            ^bb2(%iv: i16):
              %3 = "arith.addi"(%iv, %0) : (i16, i16) -> i16
              "scf.yield"(%3) : (i16) -> ()
          }) : (i16) -> i16
          "secret.yield"(%2) : (i16) -> ()
      }) : (!secretsecret) -> i16
      %4 = "scf.if"(%arg1) ({
        %5 = "arith.subi"(%1, %0) : (i16, i16) -> i16
        "scf.yield"(%5) : (i16) -> ()
      }, {
        "scf.yield"(%1) : (i16) -> ()
      }) : (i16) -> i16
      "func.return"(%4, %arg0) : (i16, !secretsecret) -> ()
  }) : () -> ()
}) : () -> ()