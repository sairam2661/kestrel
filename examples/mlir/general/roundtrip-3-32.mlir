"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x3x3x?xf32>, tensor<6x6x?x?xf32>) -> tensor<6x6x?x?xf32>, sym_name = "winograd_filter_dyn"}> ({
  ^bb0(%arg0: tensor<?x3x3x?xf32>, %arg1: tensor<6x6x?x?xf32>):
    %0 = "linalg.winograd_filter_transform"(%arg0, %arg1) <{fmr = 1 : i32}> : (tensor<?x3x3x?xf32>, tensor<6x6x?x?xf32>) -> tensor<6x6x?x?xf32>
    "func.return"(%0) : (tensor<6x6x?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

