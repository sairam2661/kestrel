"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xf32>, tensor<f32>, tensor<f32>) -> tensor<3xf32>, sym_name = "test_clip", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<3xf32>, %arg1: tensor<f32>, %arg2: tensor<f32>):
    %0 = "onnx.Clip"(%arg0, %arg1, %arg2) : (tensor<3xf32>, tensor<f32>, tensor<f32>) -> tensor<3xf32>
    "func.return"(%0) : (tensor<3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

