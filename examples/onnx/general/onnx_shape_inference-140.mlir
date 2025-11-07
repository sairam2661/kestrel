"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x?x3x4xi8>, tensor<*xf32>, tensor<2xi8>) -> tensor<*xf32>, sym_name = "test_dequantize_linear_2"}> ({
  ^bb0(%arg0: tensor<5x?x3x4xi8>, %arg1: tensor<*xf32>, %arg2: tensor<2xi8>):
    %0 = "onnx.DequantizeLinear"(%arg0, %arg1, %arg2) {axis = 1 : si64} : (tensor<5x?x3x4xi8>, tensor<*xf32>, tensor<2xi8>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

