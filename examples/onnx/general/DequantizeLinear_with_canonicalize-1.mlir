"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xui8>, tensor<f32>, tensor<ui8>) -> tensor<4xf32>, sym_name = "test_dequantizelinear_ui8"}> ({
  ^bb0(%arg0: tensor<4xui8>, %arg1: tensor<f32>, %arg2: tensor<ui8>):
    %0 = "onnx.DequantizeLinear"(%arg0, %arg1, %arg2) {axis = 1 : si64} : (tensor<4xui8>, tensor<f32>, tensor<ui8>) -> tensor<4xf32>
    "func.return"(%0) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

