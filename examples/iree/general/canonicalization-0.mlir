"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<f32>) -> (tensor<i32>, tensor<i32>, tensor<f32>, tensor<f32>, tensor<2xi32>, tensor<2xi32>, tensor<2xi32>), sym_name = "add"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<f32>):
    %0 = "stablehlo.constant"() <{value = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %1 = "stablehlo.constant"() <{value = dense<-0.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %2 = "stablehlo.constant"() <{value = dense<0> : tensor<2xi32>}> : () -> tensor<2xi32>
    %3 = "stablehlo.constant"() <{value = dense<5> : tensor<i32>}> : () -> tensor<i32>
    %4 = "stablehlo.constant"() <{value = dense<3.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %5 = "stablehlo.constant"() <{value = dense<[1, 2]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %6 = "stablehlo.add"(%0, %3) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %7 = "stablehlo.add"(%3, %3) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %8 = "stablehlo.add"(%4, %4) : (tensor<f32>, tensor<f32>) -> tensor<f32>
    %9 = "stablehlo.add"(%arg1, %1) : (tensor<f32>, tensor<f32>) -> tensor<f32>
    %10 = "stablehlo.add"(%2, %arg0) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %11 = "stablehlo.add"(%5, %arg0) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %12 = "stablehlo.add"(%5, %5) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%6, %7, %8, %9, %10, %11, %12) : (tensor<i32>, tensor<i32>, tensor<f32>, tensor<f32>, tensor<2xi32>, tensor<2xi32>, tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

