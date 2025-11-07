"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>) -> tensor<*xf32>, sym_name = "test_cse"}> ({
  ^bb0(%arg0: tensor<*xf32>):
    %0 = "onnx.Log"(%arg0) : (tensor<*xf32>) -> tensor<*xf32>
    %1 = "onnx.Tanh"(%0) : (tensor<*xf32>) -> tensor<*xf32>
    %2 = "onnx.Tanh"(%0) : (tensor<*xf32>) -> tensor<*xf32>
    %3 = "onnx.Add"(%0, %1) : (tensor<*xf32>, tensor<*xf32>) -> tensor<*xf32>
    "onnx.Return"(%3) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

