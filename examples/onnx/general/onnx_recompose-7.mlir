"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x384x768xf32>, tensor<768xf32>, tensor<768xf32>) -> tensor<1x384x768xf32>, sym_name = "layer_norm_with_div_by_one"}> ({
  ^bb0(%arg0: tensor<1x384x768xf32>, %arg1: tensor<768xf32>, %arg2: tensor<768xf32>):
    %0 = "onnx.Constant"() {value = dense<9.99999974E-6> : tensor<f32>} : () -> tensor<f32>
    %1 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %2 = "onnx.Add"(%arg0, %arg0) : (tensor<1x384x768xf32>, tensor<1x384x768xf32>) -> tensor<1x384x768xf32>
    %3 = "onnx.ReduceMeanV13"(%2) {axes = [-1], keepdims = 1 : si64} : (tensor<1x384x768xf32>) -> tensor<1x384x1xf32>
    %4 = "onnx.Sub"(%2, %3) : (tensor<1x384x768xf32>, tensor<1x384x1xf32>) -> tensor<1x384x768xf32>
    %5 = "onnx.Mul"(%4, %4) : (tensor<1x384x768xf32>, tensor<1x384x768xf32>) -> tensor<1x384x768xf32>
    %6 = "onnx.ReduceMeanV13"(%5) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_42"} : (tensor<1x384x768xf32>) -> tensor<1x384x1xf32>
    %7 = "onnx.Add"(%6, %0) : (tensor<1x384x1xf32>, tensor<f32>) -> tensor<1x384x1xf32>
    %8 = "onnx.Sqrt"(%7) : (tensor<1x384x1xf32>) -> tensor<1x384x1xf32>
    %9 = "onnx.Div"(%1, %8) : (tensor<f32>, tensor<1x384x1xf32>) -> tensor<1x384x1xf32>
    %10 = "onnx.Mul"(%4, %9) : (tensor<1x384x768xf32>, tensor<1x384x1xf32>) -> tensor<1x384x768xf32>
    %11 = "onnx.Mul"(%10, %arg1) : (tensor<1x384x768xf32>, tensor<768xf32>) -> tensor<1x384x768xf32>
    %12 = "onnx.Add"(%11, %arg2) : (tensor<1x384x768xf32>, tensor<768xf32>) -> tensor<1x384x768xf32>
    %13 = "onnx.Add"(%12, %arg2) : (tensor<1x384x768xf32>, tensor<768xf32>) -> tensor<1x384x768xf32>
    "func.return"(%13) : (tensor<1x384x768xf32>) -> ()
  }) : () -> ()
}) : () -> ()

