"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32x64xf32>, tensor<64x128xf32>) -> tensor<*xf32>, sym_name = "test_matmul_8"}> ({
  ^bb0(%arg0: tensor<32x64xf32>, %arg1: tensor<64x128xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<32x64xf32>, tensor<64x128xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

