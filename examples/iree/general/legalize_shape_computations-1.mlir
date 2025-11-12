"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>) -> tensor<1xi32>, sym_name = "reshape_dimension_size"}> ({
  ^bb0(%arg0: tensor<?x?xf32>):
    %0 = "stablehlo.get_dimension_size"(%arg0) <{dimension = 1 : i64}> : (tensor<?x?xf32>) -> tensor<i32>
    %1 = "stablehlo.reshape"(%0) : (tensor<i32>) -> tensor<1xi32>
    "func.return"(%1) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

