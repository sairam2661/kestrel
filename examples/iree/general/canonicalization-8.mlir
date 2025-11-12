"builtin.module"() ({
  "func.func"() <{function_type = () -> (tensor<6xi32>, tensor<3xi32>, tensor<3x3xi32>, tensor<2x5xi32>), sym_name = "concatenate"}> ({
    %0 = "stablehlo.constant"() <{value = dense<[0, 1]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %1 = "stablehlo.constant"() <{value = dense<[2, 3, 4]> : tensor<3xi32>}> : () -> tensor<3xi32>
    %2 = "stablehlo.constant"() <{value = dense<5> : tensor<1xi32>}> : () -> tensor<1xi32>
    %3 = "stablehlo.constant"() <{value = dense<[[0, 1, 2], [3, 4, 5]]> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %4 = "stablehlo.constant"() <{value = dense<[[6, 7, 8]]> : tensor<1x3xi32>}> : () -> tensor<1x3xi32>
    %5 = "stablehlo.constant"() <{value = dense<[[11, 12], [13, 14]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %6 = "stablehlo.concatenate"(%0, %1, %2) <{dimension = 0 : i64}> : (tensor<2xi32>, tensor<3xi32>, tensor<1xi32>) -> tensor<6xi32>
    %7 = "stablehlo.concatenate"(%0, %2) <{dimension = 0 : i64}> : (tensor<2xi32>, tensor<1xi32>) -> tensor<3xi32>
    %8 = "stablehlo.concatenate"(%3, %4) <{dimension = 0 : i64}> : (tensor<2x3xi32>, tensor<1x3xi32>) -> tensor<3x3xi32>
    %9 = "stablehlo.concatenate"(%3, %5) <{dimension = 1 : i64}> : (tensor<2x3xi32>, tensor<2x2xi32>) -> tensor<2x5xi32>
    "func.return"(%6, %7, %8, %9) : (tensor<6xi32>, tensor<3xi32>, tensor<3x3xi32>, tensor<2x5xi32>) -> ()
  }) : () -> ()
}) : () -> ()

