"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>) -> tensor<i32>, sym_name = "get_dimension_size"}> ({
  ^bb0(%arg0: tensor<?x?xf32>):
    %0 = "stablehlo.get_dimension_size"(%arg0) <{dimension = 1 : i64}> : (tensor<?x?xf32>) -> tensor<i32>
    "func.return"(%0) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

