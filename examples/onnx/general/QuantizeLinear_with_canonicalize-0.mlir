"builtin.module"() ({
  "func.func"() <{function_type = (tensor<6xf32>, tensor<f32>, tensor<ui8>) -> tensor<6xui8>, sym_name = "test_quantize_linear"}> ({
  ^bb0(%arg0: tensor<6xf32>, %arg1: tensor<f32>, %arg2: tensor<ui8>):
    %0 = "onnx.QuantizeLinear"(%arg0, %arg1, %arg2) {axis = 1 : si64, saturate = 1 : si64} : (tensor<6xf32>, tensor<f32>, tensor<ui8>) -> tensor<6xui8>
    "func.return"(%0) : (tensor<6xui8>) -> ()
  }) : () -> ()
}) : () -> ()

