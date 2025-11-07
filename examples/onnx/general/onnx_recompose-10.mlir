"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x384x768xf32>, tensor<768xf32>, tensor<768xf32>) -> tensor<1x384x768xf32>, sym_name = "rms_layer_norm_v2"}> ({
  ^bb0(%arg0: tensor<1x384x768xf32>, %arg1: tensor<768xf32>, %arg2: tensor<768xf32>):
    %0 = "onnx.Constant"() {value = dense<9.99999974E-6> : tensor<f32>} : () -> tensor<f32>
    %1 = "onnx.Mul"(%arg0, %arg0) : (tensor<1x384x768xf32>, tensor<1x384x768xf32>) -> tensor<1x384x768xf32>
    %2 = "onnx.ReduceMeanV13"(%1) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_42"} : (tensor<1x384x768xf32>) -> tensor<1x384x1xf32>
    %3 = "onnx.Add"(%0, %2) : (tensor<f32>, tensor<1x384x1xf32>) -> tensor<1x384x1xf32>
    %4 = "onnx.Sqrt"(%3) : (tensor<1x384x1xf32>) -> tensor<1x384x1xf32>
    %5 = "onnx.Div"(%arg0, %4) : (tensor<1x384x768xf32>, tensor<1x384x1xf32>) -> tensor<1x384x768xf32>
    %6 = "onnx.Mul"(%arg1, %5) : (tensor<768xf32>, tensor<1x384x768xf32>) -> tensor<1x384x768xf32>
    %7 = "onnx.Add"(%arg2, %6) : (tensor<768xf32>, tensor<1x384x768xf32>) -> tensor<1x384x768xf32>
    "func.return"(%7) : (tensor<1x384x768xf32>) -> ()
  }) : () -> ()
}) : () -> ()

