"builtin.module"() ({
  "func.func"() <{function_type = (tensor<256x?xf32>, tensor<4x12x?x?xf32>) -> tensor<4x12x256x?xf32>, sym_name = "test_matmul_broadcast_dyn_dims"}> ({
  ^bb0(%arg0: tensor<256x?xf32>, %arg1: tensor<4x12x?x?xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<256x?xf32>, tensor<4x12x?x?xf32>) -> tensor<4x12x256x?xf32>
    "func.return"(%0) : (tensor<4x12x256x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

