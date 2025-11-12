"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<f32>) -> (tensor<i32>, tensor<i32>, tensor<f32>, tensor<f32>, tensor<2xi32>, tensor<2xi32>), sym_name = "subtract"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<f32>):
    %0 = "stablehlo.constant"() <{value = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %1 = "stablehlo.constant"() <{value = dense<0.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %2 = "stablehlo.constant"() <{value = dense<0> : tensor<2xi32>}> : () -> tensor<2xi32>
    %3 = "stablehlo.constant"() <{value = dense<5> : tensor<i32>}> : () -> tensor<i32>
    %4 = "stablehlo.constant"() <{value = dense<3.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %5 = "stablehlo.constant"() <{value = dense<[1, 2]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %6 = "stablehlo.constant"() <{value = dense<4> : tensor<i32>}> : () -> tensor<i32>
    %7 = "stablehlo.constant"() <{value = dense<[0, 1]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %8 = "stablehlo.subtract"(%3, %0) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %9 = "stablehlo.subtract"(%3, %6) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %10 = "stablehlo.subtract"(%arg1, %1) : (tensor<f32>, tensor<f32>) -> tensor<f32>
    %11 = "stablehlo.subtract"(%arg1, %arg1) : (tensor<f32>, tensor<f32>) -> tensor<f32>
    %12 = "stablehlo.subtract"(%arg0, %arg0) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %13 = "stablehlo.subtract"(%5, %7) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%8, %9, %10, %11, %12, %13) : (tensor<i32>, tensor<i32>, tensor<f32>, tensor<f32>, tensor<2xi32>, tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

