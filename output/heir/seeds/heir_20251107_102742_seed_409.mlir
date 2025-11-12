"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecrettensor_16xi32, !secretsecreti1) -> !secretsecrettensor_16xi32, sym_name = "complex_conditional_secret_operation"}> ({
  ^bb0(%arg0: !secretsecrettensor_16xi32, %arg1: !secretsecreti1):
    %0:2 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<16xi32>, %arg3: i1):
      %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %3 = "scf.if"(%arg3) ({
        %4 = "arith.addi"(%arg2, %1) <{overflowFlags = #arithoverflownone}> : (tensor<16xi32>, i32) -> tensor<16xi32>
        "scf.yield"(%4) : (tensor<16xi32>) -> ()
      }, {
        %5 = "arith.muli"(%arg2, %2) <{overflowFlags = #arithoverflownone}> : (tensor<16xi32>, i32) -> tensor<16xi32>
        "scf.yield"(%5) : (tensor<16xi32>) -> ()
      }) : (i1) -> tensor<16xi32>
      "secret.yield"(%3) : (tensor<16xi32>) -> ()
    }) : (!secretsecrettensor_16xi32, !secretsecreti1) -> (!secretsecrettensor_16xi32)
    "func.return"(%0#0) : (!secretsecrettensor_16xi32) -> ()
  }) : () -> ()
}) : () -> ()