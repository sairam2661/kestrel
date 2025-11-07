"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x1x6x1xf32>, tensor<6x2xf32>) -> tensor<*xf32>, sym_name = "test_expand_with_shape"}> ({
  ^bb0(%arg0: tensor<2x1x6x1xf32>, %arg1: tensor<6x2xf32>):
    %0 = "onnx.Shape"(%arg1) {start = 0 : si64} : (tensor<6x2xf32>) -> tensor<*xi64>
    %1 = "onnx.Expand"(%arg0, %0) : (tensor<2x1x6x1xf32>, tensor<*xi64>) -> tensor<*xf32>
    "func.return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

