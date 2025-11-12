"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi64>, sym_name = "tosa_const_combinations"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
    %0 = "tosa.const"() <{value = dense<0> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %1 = "tosa.const"() <{value = dense<1> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %2 = "tosa.const"() <{value = dense<2> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %3 = "tosa.add"(%arg0, %arg1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %4 = "tosa.add"(%3, %0) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %5 = "tosa.mul"(%4, %2) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %6 = "tosa.cast"(%5) : (tensor<2x3xi32>) -> tensor<2x3xi64>
    "func.return"(%6) : (tensor<2x3xi64>) -> ()
  }) : () -> ()
}) : () -> ()