"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex_reduction"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "tt.expand_dims"(%1) <{axis = 1 : i64}> : (tensor<128xi32>) -> tensor<128x1xi32>
    %3 = "arith.remsi"(%2, %0) <{overflowFlags = #arith_overflownone}> : (tensor<128x1xi32>, tensor<128xi32>) -> tensor<128x1xi32>
    %4 = "tt.reduce"(%3, "arith.addi") <{dimensions = dense<0> : tensor<1xi64>}> : (tensor<128x1xi32>, tensor<1xi64>) -> tensor<1xi32>
    "tt.return"(%4) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()