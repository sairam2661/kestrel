"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>) -> tensor<?x?xf32>, sym_name = "transpose_on_ztensor_unknown_dims"}> ({
  ^bb0(%arg0: tensor<?x?xf32>):
    %0 = "onnx.Relu"(%arg0) : (tensor<?x?xf32>) -> tensor<?x?xf32>
    %1 = "onnx.Relu"(%0) : (tensor<?x?xf32>) -> tensor<?x?xf32>
    %2 = "onnx.Transpose"(%1) {perm = [1, 0]} : (tensor<?x?xf32>) -> tensor<?x?xf32>
    %3 = "onnx.Relu"(%2) : (tensor<?x?xf32>) -> tensor<?x?xf32>
    %4 = "onnx.Relu"(%3) : (tensor<?x?xf32>) -> tensor<?x?xf32>
    "onnx.Return"(%4) : (tensor<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

