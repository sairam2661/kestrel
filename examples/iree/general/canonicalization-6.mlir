"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>, tensor<2xi1>) -> (tensor<2xi32>, tensor<2xi32>, tensor<2xi32>, tensor<2xi32>, tensor<2xi32>, tensor<2xi32>, tensor<4xi32>), sym_name = "select"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>, %arg2: tensor<2xi1>):
    %0 = "stablehlo.constant"() <{value = dense<false> : tensor<i1>}> : () -> tensor<i1>
    %1 = "stablehlo.constant"() <{value = dense<true> : tensor<i1>}> : () -> tensor<i1>
    %2 = "stablehlo.constant"() <{value = dense<false> : tensor<2xi1>}> : () -> tensor<2xi1>
    %3 = "stablehlo.constant"() <{value = dense<true> : tensor<2xi1>}> : () -> tensor<2xi1>
    %4 = "stablehlo.constant"() <{value = dense<[false, true, false, true]> : tensor<4xi1>}> : () -> tensor<4xi1>
    %5 = "stablehlo.constant"() <{value = dense<[1, 2, 3, 4]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %6 = "stablehlo.constant"() <{value = dense<[5, 6, 7, 8]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %7 = "stablehlo.select"(%arg2, %arg0, %arg0) : (tensor<2xi1>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %8 = "stablehlo.select"(%0, %arg0, %arg1) : (tensor<i1>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %9 = "stablehlo.select"(%1, %arg0, %arg1) : (tensor<i1>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %10 = "stablehlo.select"(%2, %arg0, %arg1) : (tensor<2xi1>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %11 = "stablehlo.select"(%3, %arg0, %arg1) : (tensor<2xi1>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %12 = "stablehlo.select"(%arg2, %arg0, %arg1) : (tensor<2xi1>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %13 = "stablehlo.select"(%4, %5, %6) : (tensor<4xi1>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%7, %8, %9, %10, %11, %12, %13) : (tensor<2xi32>, tensor<2xi32>, tensor<2xi32>, tensor<2xi32>, tensor<2xi32>, tensor<2xi32>, tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

