"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xf32>, tensor<f32>, tensor<f32>) -> tensor<3xf32>, sym_name = "test_clip_default_min", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<3xf32>, %arg1: tensor<f32>, %arg2: tensor<f32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Clip"(%arg0, %0, %arg2) : (tensor<3xf32>, none, tensor<f32>) -> tensor<3xf32>
    "func.return"(%1) : (tensor<3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

