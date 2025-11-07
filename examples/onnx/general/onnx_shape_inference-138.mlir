"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x2x3x4xf32>, tensor<f32>) -> tensor<*xui8>, sym_name = "test_quantize_linear_3"}> ({
  ^bb0(%arg0: tensor<5x2x3x4xf32>, %arg1: tensor<f32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.QuantizeLinear"(%arg0, %arg1, %0) {axis = 1 : si64, saturate = 1 : si64} : (tensor<5x2x3x4xf32>, tensor<f32>, none) -> tensor<*xui8>
    "onnx.Return"(%1) : (tensor<*xui8>) -> ()
  }) : () -> ()
}) : () -> ()

