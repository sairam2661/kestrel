"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>, tensor<10x?xf32>) -> tensor<*xf32>, sym_name = "test_max_not_lowered_unknown_dims"}> ({
  ^bb0(%arg0: tensor<10x10xf32>, %arg1: tensor<10x?xf32>):
    %0 = "onnx.Max"(%arg0, %arg1) : (tensor<10x10xf32>, tensor<10x?xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

