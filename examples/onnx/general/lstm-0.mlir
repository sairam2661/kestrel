"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x4x8xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<1x8x64xf16, #zhigh.layout<{dataLayout = "FICO"}>>, tensor<1x16x64xf16, #zhigh.layout<{dataLayout = "FICO"}>>) -> tensor<*xf16>, sym_name = "test_lstm_all_timesteps"}> ({
  ^bb0(%arg0: tensor<2x4x8xf16, #zhigh.layout<{dataLayout = "3DS"}>>, %arg1: tensor<1x8x64xf16, #zhigh.layout<{dataLayout = "FICO"}>>, %arg2: tensor<1x16x64xf16, #zhigh.layout<{dataLayout = "FICO"}>>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:2 = "zhigh.LSTM"(%arg0, %0, %0, %arg1, %0, %arg2, %0) {direction = "forward", hidden_size = 16 : si64, return_all_steps = -1 : si64} : (tensor<2x4x8xf16, #zhigh.layout<{dataLayout = "3DS"}>>, none, none, tensor<1x8x64xf16, #zhigh.layout<{dataLayout = "FICO"}>>, none, tensor<1x16x64xf16, #zhigh.layout<{dataLayout = "FICO"}>>, none) -> (tensor<*xf16>, tensor<*xf16>)
    "func.return"(%1#0) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

