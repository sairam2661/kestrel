"builtin.module"() ({
  "func.func"() <{function_type = (tensor<100x4x8xf32>, tensor<100x8x16xf32>) -> tensor<*xf32>, sym_name = "test_onnx_to_matmul3d"}> ({
  ^bb0(%arg0: tensor<100x4x8xf32>, %arg1: tensor<100x8x16xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<100x4x8xf32>, tensor<100x8x16xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

