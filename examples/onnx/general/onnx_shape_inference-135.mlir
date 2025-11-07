"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x2x3x4xf32>) -> tensor<*xui8>, sym_name = "test_dyn_quantize_linear_1"}> ({
  ^bb0(%arg0: tensor<5x2x3x4xf32>):
    %0:3 = "onnx.DynamicQuantizeLinear"(%arg0) : (tensor<5x2x3x4xf32>) -> (tensor<*xui8>, tensor<*xf32>, tensor<*xui8>)
    "onnx.Return"(%0#0) : (tensor<*xui8>) -> ()
  }) : () -> ()
}) : () -> ()

