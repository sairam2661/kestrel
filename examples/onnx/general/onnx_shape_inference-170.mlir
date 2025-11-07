"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x3x4xf32>, tensor<f32>) -> tensor<*xf32>, sym_name = "test_pow"}> ({
  ^bb0(%arg0: tensor<1x2x3x4xf32>, %arg1: tensor<f32>):
    %0 = "onnx.Pow"(%arg0, %arg1) : (tensor<1x2x3x4xf32>, tensor<f32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

