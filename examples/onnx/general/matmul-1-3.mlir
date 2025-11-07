"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xf32>, tensor<4xf32>) -> tensor<4xf32>, sym_name = "test_matmul_not_lowered_inadequate_shape"}> ({
  ^bb0(%arg0: tensor<4x4xf32>, %arg1: tensor<4xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<4x4xf32>, tensor<4xf32>) -> tensor<4xf32>
    "func.return"(%0) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

