"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x8xf32>, tensor<8x16xf32>, tensor<1xf32>) -> tensor<*xf32>, sym_name = "test_onnx_matmul_add_to_zhigh_1D_bias_not_lower_add_since_broadcasting_bias"}> ({
  ^bb0(%arg0: tensor<4x8xf32>, %arg1: tensor<8x16xf32>, %arg2: tensor<1xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<4x8xf32>, tensor<8x16xf32>) -> tensor<*xf32>
    %1 = "onnx.Add"(%arg2, %0) : (tensor<1xf32>, tensor<*xf32>) -> tensor<*xf32>
    "func.return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

