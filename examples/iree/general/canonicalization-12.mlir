"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x3xf32>, tensor<?x2xf32>) -> (tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>), sym_name = "get_dimension_size"}> ({
  ^bb0(%arg0: tensor<1x2x3xf32>, %arg1: tensor<?x2xf32>):
    %0 = "stablehlo.get_dimension_size"(%arg0) <{dimension = 0 : i64}> : (tensor<1x2x3xf32>) -> tensor<i32>
    %1 = "stablehlo.get_dimension_size"(%arg0) <{dimension = 1 : i64}> : (tensor<1x2x3xf32>) -> tensor<i32>
    %2 = "stablehlo.get_dimension_size"(%arg0) <{dimension = 2 : i64}> : (tensor<1x2x3xf32>) -> tensor<i32>
    %3 = "stablehlo.get_dimension_size"(%arg1) <{dimension = 0 : i64}> : (tensor<?x2xf32>) -> tensor<i32>
    %4 = "stablehlo.get_dimension_size"(%arg1) <{dimension = 1 : i64}> : (tensor<?x2xf32>) -> tensor<i32>
    "func.return"(%0, %1, %2, %3, %4) : (tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>, tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

