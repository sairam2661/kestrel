"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xf32>) -> (tensor<1xf32>, tensor<1xi32>, tensor<i32>, tensor<2x2xi32>), sym_name = "reshape"}> ({
  ^bb0(%arg0: tensor<1xf32>):
    %0 = "stablehlo.constant"() <{value = dense<2> : tensor<i32>}> : () -> tensor<i32>
    %1 = "stablehlo.constant"() <{value = dense<[1, 2, 3, 4]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %2 = "stablehlo.reshape"(%arg0) : (tensor<1xf32>) -> tensor<1xf32>
    %3 = "stablehlo.reshape"(%0) : (tensor<i32>) -> tensor<1xi32>
    %4 = "stablehlo.reshape"(%3) : (tensor<1xi32>) -> tensor<i32>
    %5 = "stablehlo.reshape"(%1) : (tensor<4xi32>) -> tensor<2x2xi32>
    "func.return"(%2, %3, %4, %5) : (tensor<1xf32>, tensor<1xi32>, tensor<i32>, tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

