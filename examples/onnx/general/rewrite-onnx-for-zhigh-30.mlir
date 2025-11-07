"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x12x256x256xf32>) -> tensor<4x12x256x256xf32>, sym_name = "softmax_nd_to_2d"}> ({
  ^bb0(%arg0: tensor<4x12x256x256xf32>):
    %0 = "onnx.Softmax"(%arg0) {axis = 3 : si64} : (tensor<4x12x256x256xf32>) -> tensor<4x12x256x256xf32>
    "func.return"(%0) : (tensor<4x12x256x256xf32>) -> ()
  }) : () -> ()
}) : () -> ()

