"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4xf32>) -> tensor<*xf32>, sym_name = "test_flatten_3"}> ({
  ^bb0(%arg0: tensor<2x3x4xf32>):
    %0 = "onnx.Flatten"(%arg0) {axis = -1 : si64} : (tensor<2x3x4xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

