"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (!secretsecret, !secretsecret) -> !secretsecret, sym_name = "complex_control_flow_example"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !secretsecret):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 10 : index}> : () -> index
    %3 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<10xi16>, %arg3: tensor<10xi16>):
      %4 = "scf.for"(%0, %0, %1, %0, %0) ({
      ^bb0(%arg4: index, %arg5: i16, %arg6: i16):
        %7 = "scf.for"(%0, %0, %1, %0, %0) ({
        ^bb0(%arg8: index, %arg9: i16, %arg10: i16):
          %11 = "arith.cmpi"(%arg5, %arg9) <{predicate = 4 : i64}> : (i16, i16) -> i1
          %12 = "scf.if"(%arg11) ({
            %13 = "arith.addi"(%arg5, %arg9) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
            %14 = "arith.addi"(%arg6, %arg10) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
            "scf.yield"(%13, %14) : (i16, i16) -> ()
          }, {
            %15 = "arith.addi"(%arg5, %arg10) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
            %16 = "arith.addi"(%arg6, %arg9) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
            "scf.yield"(%15, %16) : (i16, i16) -> ()
          }) : (i1) -> (i16, i16)
          "scf.yield"(%12#0, %12#1) : (i16, i16) -> ()
        }) {lower = 0 : i64, upper = 10 : i64} : (index, index, index, i16, i16) -> (i16, i16)
        "scf.yield"(%7#0, %7#1) : (i16, i16) -> ()
      }) {lower = 0 : i64, upper = 10 : i64} : (index, index, index, i16, i16) -> (i16, i16)
      %8 = "arith.addi"(%4#0, %4#1) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
      "secret.yield"(%8) : (i16) -> ()
    }) : (!secretsecret, !secretsecret) -> !secretsecret
    "func.return"(%3) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()