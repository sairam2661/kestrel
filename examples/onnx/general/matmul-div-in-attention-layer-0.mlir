"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x12x?x64xf32>) -> tensor<?x?x?x?xf32>, sym_name = "matmul_div"}> ({
  ^bb0(%arg0: tensor<?x12x?x64xf32>):
    %0 = "onnx.Constant"() {value = dense<8.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %1 = "onnx.Transpose"(%arg0) {perm = [0, 1, 3, 2]} : (tensor<?x12x?x64xf32>) -> tensor<?x12x64x?xf32>
    %2 = "onnx.MatMul"(%arg0, %1) : (tensor<?x12x?x64xf32>, tensor<?x12x64x?xf32>) -> tensor<?x12x?x?xf32>
    %3 = "onnx.Div"(%2, %0) : (tensor<?x12x?x?xf32>, tensor<f32>) -> tensor<?x12x?x?xf32>
    "onnx.Return"(%3) : (tensor<?x12x?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

