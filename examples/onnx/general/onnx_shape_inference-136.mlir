"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x2x3x4xf32>, tensor<f32>, tensor<i8>) -> tensor<*xi8>, sym_name = "test_quantize_linear_1"}> ({
  ^bb0(%arg0: tensor<5x2x3x4xf32>, %arg1: tensor<f32>, %arg2: tensor<i8>):
    %0 = "onnx.QuantizeLinear"(%arg0, %arg1, %arg2) {axis = 1 : si64, saturate = 1 : si64} : (tensor<5x2x3x4xf32>, tensor<f32>, tensor<i8>) -> tensor<*xi8>
    "onnx.Return"(%0) : (tensor<*xi8>) -> ()
  }) : () -> ()
}) : () -> ()

