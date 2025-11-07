"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x5x5xf32>) -> tensor<1x3x1x1xf32>, sym_name = "test_global_average_pool"}> ({
  ^bb0(%arg0: tensor<1x3x5x5xf32>):
    %0 = "onnx.GlobalAveragePool"(%arg0) : (tensor<1x3x5x5xf32>) -> tensor<1x3x1x1xf32>
    "func.return"(%0) : (tensor<1x3x1x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

