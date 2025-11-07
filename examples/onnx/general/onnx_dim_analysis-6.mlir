"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8x?x16x4xf32>) -> tensor<8x?x16x32xf32>, sym_name = "test_matmul_batchsize_diff_rank"}> ({
  ^bb0(%arg0: tensor<8x?x16x4xf32>):
    %0 = "onnx.Constant"() {value = dense<[-1, 4, 128]> : tensor<3xi64>} : () -> tensor<3xi64>
    %1 = "onnx.Reshape"(%arg0, %0) {allowzero = 0 : si64} : (tensor<8x?x16x4xf32>, tensor<3xi64>) -> tensor<?x4x32xf32>
    %2 = "onnx.MatMul"(%arg0, %1) : (tensor<8x?x16x4xf32>, tensor<?x4x32xf32>) -> tensor<8x?x16x32xf32>
    "onnx.Return"(%2) : (tensor<8x?x16x32xf32>) -> ()
  }) : () -> ()
}) : () -> ()

