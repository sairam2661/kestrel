"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4x5xf32>, tensor<3xf32>, tensor<3xf32>) -> tensor<2x3x4x5xf32>, sym_name = "instance_norm"}> ({
  ^bb0(%arg0: tensor<2x3x4x5xf32>, %arg1: tensor<3xf32>, %arg2: tensor<3xf32>):
    %0 = "onnx.InstanceNormalization"(%arg0, %arg1, %arg2) {epsilon = 0.00999999977 : f32} : (tensor<2x3x4x5xf32>, tensor<3xf32>, tensor<3xf32>) -> tensor<2x3x4x5xf32>
    "func.return"(%0) : (tensor<2x3x4x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

