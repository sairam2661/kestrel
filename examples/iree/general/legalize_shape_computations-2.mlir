"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>) -> tensor<i32>, sym_name = "multiply_dimension_size"}> ({
  ^bb0(%arg0: tensor<?x?xf32>):
    %0 = "stablehlo.constant"() <{value = dense<2> : tensor<i32>}> : () -> tensor<i32>
    %1 = "stablehlo.get_dimension_size"(%arg0) <{dimension = 1 : i64}> : (tensor<?x?xf32>) -> tensor<i32>
    %2 = "stablehlo.multiply"(%0, %1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    "func.return"(%2) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

