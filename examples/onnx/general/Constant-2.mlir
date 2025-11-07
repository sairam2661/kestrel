"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3x!onnx.String>, sym_name = "test_constant_string_3elem"}> ({
    %0 = "onnx.Constant"() {value = dense<["1", "2", "3"]> : tensor<3x!onnx.String>} : () -> tensor<3x!onnx.String>
    "func.return"(%0) : (tensor<3x!onnx.String>) -> ()
  }) : () -> ()
}) : () -> ()

