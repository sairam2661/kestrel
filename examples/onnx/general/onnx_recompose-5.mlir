"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x384x768xf32>, tensor<768xf32>, tensor<768xf32>) -> tensor<1x384x768xf32>, sym_name = "not_a_layer_norm"}> ({
  ^bb0(%arg0: tensor<1x384x768xf32>, %arg1: tensor<768xf32>, %arg2: tensor<768xf32>):
    %0 = "onnx.Constant"() {value = dense<9.99999974E-6> : tensor<f32>} : () -> tensor<f32>
    %1 = "onnx.ReduceMeanV13"(%arg0) {axes = [-1], keepdims = 1 : si64} : (tensor<1x384x768xf32>) -> tensor<1x384x1xf32>
    %2 = "onnx.Sub"(%1, %arg0) : (tensor<1x384x1xf32>, tensor<1x384x768xf32>) -> tensor<1x384x768xf32>
    %3 = "onnx.Mul"(%2, %2) : (tensor<1x384x768xf32>, tensor<1x384x768xf32>) -> tensor<1x384x768xf32>
    %4 = "onnx.ReduceMeanV13"(%3) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_42"} : (tensor<1x384x768xf32>) -> tensor<1x384x1xf32>
    %5 = "onnx.Add"(%0, %4) : (tensor<f32>, tensor<1x384x1xf32>) -> tensor<1x384x1xf32>
    %6 = "onnx.Sqrt"(%5) : (tensor<1x384x1xf32>) -> tensor<1x384x1xf32>
    %7 = "onnx.Div"(%2, %6) : (tensor<1x384x768xf32>, tensor<1x384x1xf32>) -> tensor<1x384x768xf32>
    %8 = "onnx.Mul"(%arg1, %7) : (tensor<768xf32>, tensor<1x384x768xf32>) -> tensor<1x384x768xf32>
    %9 = "onnx.Add"(%arg2, %8) : (tensor<768xf32>, tensor<1x384x768xf32>) -> tensor<1x384x768xf32>
    "func.return"(%9) : (tensor<1x384x768xf32>) -> ()
  }) : () -> ()
}) : () -> ()

