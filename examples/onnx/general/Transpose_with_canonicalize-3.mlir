"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x256x12x32x64xf32>) -> tensor<2x12x256x32x64xf32>, sym_name = "test_transpose_block_2_last_dims"}> ({
  ^bb0(%arg0: tensor<2x256x12x32x64xf32>):
    %0 = "onnx.Transpose"(%arg0) {perm = [0, 2, 1, 3, 4]} : (tensor<2x256x12x32x64xf32>) -> tensor<2x12x256x32x64xf32>
    "func.return"(%0) : (tensor<2x12x256x32x64xf32>) -> ()
  }) : () -> ()
}) : () -> ()

