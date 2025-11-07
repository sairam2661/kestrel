"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2x!onnx.String>, tensor<2x2x!onnx.String>) -> tensor<*xi1>, sym_name = "test_equal_string"}> ({
  ^bb0(%arg0: tensor<2x2x!onnx.String>, %arg1: tensor<2x2x!onnx.String>):
    %0 = "onnx.Equal"(%arg0, %arg1) : (tensor<2x2x!onnx.String>, tensor<2x2x!onnx.String>) -> tensor<*xi1>
    "func.return"(%0) : (tensor<*xi1>) -> ()
  }) : () -> ()
}) : () -> ()

