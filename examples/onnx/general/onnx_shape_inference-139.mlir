"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x2x3x4xi8>, tensor<f32>, tensor<i8>) -> tensor<*xf32>, sym_name = "test_dequantize_linear_1"}> ({
  ^bb0(%arg0: tensor<5x2x3x4xi8>, %arg1: tensor<f32>, %arg2: tensor<i8>):
    %0 = "onnx.DequantizeLinear"(%arg0, %arg1, %arg2) {axis = 1 : si64} : (tensor<5x2x3x4xi8>, tensor<f32>, tensor<i8>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

