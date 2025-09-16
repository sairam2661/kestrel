"builtin.module"() ({
  "func.func"() <{function_type = (tensor<6x6x?x?x?x?xf32>, tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>, sym_name = "winograd_output_dyn"}> ({
  ^bb0(%arg0: tensor<6x6x?x?x?x?xf32>, %arg1: tensor<?x?x?x?xf32>):
    %0 = "linalg.winograd_output_transform"(%arg0, %arg1) <{fmr = 1 : i32}> : (tensor<6x6x?x?x?x?xf32>, tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>
    "func.return"(%0) : (tensor<?x?x?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

