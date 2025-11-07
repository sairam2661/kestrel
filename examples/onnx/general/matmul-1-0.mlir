"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x8xf32>, tensor<8x16xf32>) -> tensor<*xf32>, sym_name = "test_onnx_to_matmul2d"}> ({
  ^bb0(%arg0: tensor<4x8xf32>, %arg1: tensor<8x16xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<4x8xf32>, tensor<8x16xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

