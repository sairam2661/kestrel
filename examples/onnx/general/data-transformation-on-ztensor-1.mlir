"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x5xf32>) -> tensor<5x3xf32>, sym_name = "transpose_on_ztensor"}> ({
  ^bb0(%arg0: tensor<3x5xf32>):
    %0 = "onnx.Relu"(%arg0) : (tensor<3x5xf32>) -> tensor<3x5xf32>
    %1 = "onnx.Relu"(%0) : (tensor<3x5xf32>) -> tensor<3x5xf32>
    %2 = "onnx.Transpose"(%1) {perm = [1, 0]} : (tensor<3x5xf32>) -> tensor<5x3xf32>
    %3 = "onnx.Relu"(%2) : (tensor<5x3xf32>) -> tensor<5x3xf32>
    %4 = "onnx.Relu"(%3) : (tensor<5x3xf32>) -> tensor<5x3xf32>
    "onnx.Return"(%4) : (tensor<5x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

