"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecrettensor_i16xf32, !secretsecrettensor_1xi16) -> !secretsecrettensor_i16, sym_name = "nested_control_flow_with_secret"}> ({
  ^bb0(%arg0: !secretsecrettensor_i16xf32, %arg1: !secretsecrettensor_1xi16):
    %0 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %1 = "arith.constant"() <{value = 1 : i16}> : () -> i16
    %2 = "arith.constant"() <{value = 2 : i16}> : () -> i16
    %3 = "arith.constant"() <{value = 3 : i16}> : () -> i16
    %4 = "arith.constant"() <{value = 4 : i16}> : () -> i16
    %5 = "arith.constant"() <{value = 5 : i16}> : () -> i16
    %6 = "arith.constant"() <{value = 6 : i16}> : () -> i16
    %7 = "arith.constant"() <{value = 7 : i16}> : () -> i16
    %8 = "arith.constant"() <{value = 8 : i16}> : () -> i16
    %9 = "arith.constant"() <{value = 9 : i16}> : () -> i16
    %10 = "arith.constant"() <{value = 10 : i16}> : () -> i16
    %11 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<10xi32>, %arg3: tensor<1xi16>):
      %12 = "scf.for"(%0, %1, %0, %4) ({
      ^bb0(%arg4: i16, %arg5: i16):
        %13 = "scf.if"(%arg4) ({
          %14 = "arith.addi"(%arg5, %1) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
          "scf.yield"(%14) : (i16) -> ()
        }, {
          %15 = "arith.subi"(%arg5, %1) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
          "scf.yield"(%15) : (i16) -> ()
        }) : (i1) -> (i16)
        "scf.yield"(%13) : (i16) -> ()
      }) {lower = 0 : i64, upper = 10 : i64} : (i16, i16) -> i16
      "secret.yield"(%12) : (i16) -> ()
    }) : (!secretsecrettensor_i16xf32, !secretsecrettensor_1xi16) -> !secretsecrettensor_i16
    "func.return"(%11) : (!secretsecrettensor_i16) -> ()
  }) : () -> ()
}) : () -> ()