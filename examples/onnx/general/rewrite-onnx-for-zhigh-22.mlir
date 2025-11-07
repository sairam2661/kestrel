"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x12x256x256xf32>, tensor<4x12x256x64xf32>) -> tensor<4x12x256x64xf32>, sym_name = "test_matmul"}> ({
  ^bb0(%arg0: tensor<4x12x256x256xf32>, %arg1: tensor<4x12x256x64xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<4x12x256x256xf32>, tensor<4x12x256x64xf32>) -> tensor<4x12x256x64xf32>
    "func.return"(%0) : (tensor<4x12x256x64xf32>) -> ()
  }) : () -> ()
}) : () -> ()

