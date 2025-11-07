"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x64x112x112xf32>, tensor<64xf32>) -> tensor<*xf32>, sym_name = "mul_broadcast_axis_unsqueeze"}> ({
  ^bb0(%arg0: tensor<1x64x112x112xf32>, %arg1: tensor<64xf32>):
    %0 = "onnx.Mul"(%arg0, %arg1) {axis = 1 : si64, broadcast = 1 : si64} : (tensor<1x64x112x112xf32>, tensor<64xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

