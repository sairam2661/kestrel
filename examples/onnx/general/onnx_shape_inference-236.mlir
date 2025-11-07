"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5xf32>) -> tensor<*xf32>, sym_name = "topk_constant_k"}> ({
  ^bb0(%arg0: tensor<3x4x5xf32>):
    %0 = "onnx.Constant"() {value = dense<2> : tensor<i64>} : () -> tensor<i64>
    %1:2 = "onnx.TopK"(%arg0, %0) {axis = 1 : si64, largest = 1 : si64, sorted = 1 : si64} : (tensor<3x4x5xf32>, tensor<i64>) -> (tensor<*xf32>, tensor<*xi64>)
    "onnx.Return"(%1#0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

