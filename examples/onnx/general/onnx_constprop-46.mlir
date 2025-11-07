"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<5x4x2x1xi32>, sym_name = "test_matmul_2d_batch_broadcast"}> ({
    %0 = "onnx.Constant"() {value = dense<1> : tensor<4x2x3xi32>} : () -> tensor<4x2x3xi32>
    %1 = "onnx.Constant"() {value = dense<-1> : tensor<5x1x3x1xi32>} : () -> tensor<5x1x3x1xi32>
    %2 = "onnx.MatMul"(%0, %1) : (tensor<4x2x3xi32>, tensor<5x1x3x1xi32>) -> tensor<5x4x2x1xi32>
    "onnx.Return"(%2) : (tensor<5x4x2x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

