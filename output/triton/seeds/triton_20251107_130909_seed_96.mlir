"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xf32>, tensor<128xf32>) -> (), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: tensor<128xf32>, %arg1: tensor<128xf32>):
    %0 = "arith.addf"(%arg0, %arg1) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %1 = "arith.subf"(%arg0, %arg1) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %2 = "arith.mulf"(%0, %1) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %3 = "arith.divf"(%0, %1) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %4 = "arith.constant"() <{value = dense<1.0> : tensor<128xf32>}> : () -> tensor<128xf32>
    %5 = "arith.addf"(%2, %4) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()