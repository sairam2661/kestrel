"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>) -> tensor<2xi32>, sym_name = "concat_dimension_size"}> ({
  ^bb0(%arg0: tensor<?x?xf32>):
    %0 = "stablehlo.get_dimension_size"(%arg0) <{dimension = 1 : i64}> : (tensor<?x?xf32>) -> tensor<i32>
    %1 = "stablehlo.reshape"(%0) : (tensor<i32>) -> tensor<1xi32>
    %2 = "stablehlo.constant"() <{value = dense<2> : tensor<1xi32>}> : () -> tensor<1xi32>
    %3 = "stablehlo.concatenate"(%1, %2) <{dimension = 0 : i64}> : (tensor<1xi32>, tensor<1xi32>) -> tensor<2xi32>
    "func.return"(%3) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

