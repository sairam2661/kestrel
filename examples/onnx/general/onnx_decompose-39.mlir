"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x6x8x16xf32>, tensor<2xf32>, tensor<2xf32>) -> tensor<3x4x6x8x16xf32>, sym_name = "group_norm5d"}> ({
  ^bb0(%arg0: tensor<3x4x6x8x16xf32>, %arg1: tensor<2xf32>, %arg2: tensor<2xf32>):
    %0 = "onnx.GroupNormalization"(%arg0, %arg1, %arg2) {epsilon = 0.00999999977 : f32, num_groups = 2 : si64} : (tensor<3x4x6x8x16xf32>, tensor<2xf32>, tensor<2xf32>) -> tensor<3x4x6x8x16xf32>
    "onnx.Return"(%0) : (tensor<3x4x6x8x16xf32>) -> ()
  }) : () -> ()
}) : () -> ()

