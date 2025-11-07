"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x7xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<1x?x9xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<1x?x9xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<1x7x36xf16, #zhigh.layout<{dataLayout = "FICO"}>>, tensor<1x9x36xf16, #zhigh.layout<{dataLayout = "FICO"}>>) -> (tensor<*xf16>, tensor<*xf16>), sym_name = "lstm_no_input_and_hidden_biases"}> ({
  ^bb0(%arg0: tensor<?x?x7xf16, #zhigh.layout<{dataLayout = "3DS"}>>, %arg1: tensor<1x?x9xf16, #zhigh.layout<{dataLayout = "3DS"}>>, %arg2: tensor<1x?x9xf16, #zhigh.layout<{dataLayout = "3DS"}>>, %arg3: tensor<1x7x36xf16, #zhigh.layout<{dataLayout = "FICO"}>>, %arg4: tensor<1x9x36xf16, #zhigh.layout<{dataLayout = "FICO"}>>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:2 = "zhigh.LSTM"(%arg0, %arg1, %arg2, %arg3, %0, %arg4, %0) {direction = "forward", hidden_size = 9 : si64, return_all_steps = -1 : si64} : (tensor<?x?x7xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<1x?x9xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<1x?x9xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<1x7x36xf16, #zhigh.layout<{dataLayout = "FICO"}>>, none, tensor<1x9x36xf16, #zhigh.layout<{dataLayout = "FICO"}>>, none) -> (tensor<*xf16>, tensor<*xf16>)
    "func.return"(%1#0, %1#1) : (tensor<*xf16>, tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

