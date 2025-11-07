"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x4x8xf32>, tensor<10x8x16xf32>, tensor<4x16xf32>) -> tensor<*xf32>, sym_name = "test_onnx_matmul_add_to_zhigh_not_lower_add_since_bias_dims"}> ({
  ^bb0(%arg0: tensor<10x4x8xf32>, %arg1: tensor<10x8x16xf32>, %arg2: tensor<4x16xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<10x4x8xf32>, tensor<10x8x16xf32>) -> tensor<*xf32>
    %1 = "onnx.Add"(%arg2, %0) : (tensor<4x16xf32>, tensor<*xf32>) -> tensor<*xf32>
    "func.return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

