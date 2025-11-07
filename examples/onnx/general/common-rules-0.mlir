"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>, tensor<f32>, tensor<2xf32>) -> tensor<*xf32>, sym_name = "test_not_lowered_scalar_tensor"}> ({
  ^bb0(%arg0: tensor<f32>, %arg1: tensor<f32>, %arg2: tensor<2xf32>):
    %0 = "onnx.Add"(%arg0, %arg1) : (tensor<f32>, tensor<f32>) -> tensor<*xf32>
    %1 = "onnx.Add"(%arg2, %arg2) : (tensor<2xf32>, tensor<2xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

