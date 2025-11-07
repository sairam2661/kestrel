"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x384x768xf32>, tensor<768xf32>, tensor<768xf32>) -> tensor<1x384x768xf32>, sym_name = "layer_norm_with_reciprocal"}> ({
  ^bb0(%arg0: tensor<1x384x768xf32>, %arg1: tensor<768xf32>, %arg2: tensor<768xf32>):
    %0 = "onnx.Constant"() {value = dense<9.99999974E-6> : tensor<f32>} : () -> tensor<f32>
    %1 = "onnx.Add"(%arg0, %arg0) : (tensor<1x384x768xf32>, tensor<1x384x768xf32>) -> tensor<1x384x768xf32>
    %2 = "onnx.ReduceMeanV13"(%1) {axes = [-1], keepdims = 1 : si64} : (tensor<1x384x768xf32>) -> tensor<1x384x1xf32>
    %3 = "onnx.Sub"(%1, %2) : (tensor<1x384x768xf32>, tensor<1x384x1xf32>) -> tensor<1x384x768xf32>
    %4 = "onnx.Mul"(%3, %3) : (tensor<1x384x768xf32>, tensor<1x384x768xf32>) -> tensor<1x384x768xf32>
    %5 = "onnx.ReduceMeanV13"(%4) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_42"} : (tensor<1x384x768xf32>) -> tensor<1x384x1xf32>
    %6 = "onnx.Add"(%5, %0) : (tensor<1x384x1xf32>, tensor<f32>) -> tensor<1x384x1xf32>
    %7 = "onnx.Sqrt"(%6) : (tensor<1x384x1xf32>) -> tensor<1x384x1xf32>
    %8 = "onnx.Reciprocal"(%7) : (tensor<1x384x1xf32>) -> tensor<1x384x1xf32>
    %9 = "onnx.Mul"(%3, %8) : (tensor<1x384x768xf32>, tensor<1x384x1xf32>) -> tensor<1x384x768xf32>
    %10 = "onnx.Mul"(%9, %arg1) : (tensor<1x384x768xf32>, tensor<768xf32>) -> tensor<1x384x768xf32>
    %11 = "onnx.Add"(%10, %arg2) : (tensor<1x384x768xf32>, tensor<768xf32>) -> tensor<1x384x768xf32>
    %12 = "onnx.Add"(%11, %arg2) : (tensor<1x384x768xf32>, tensor<768xf32>) -> tensor<1x384x768xf32>
    "func.return"(%12) : (tensor<1x384x768xf32>) -> ()
  }) : () -> ()
}) : () -> ()

