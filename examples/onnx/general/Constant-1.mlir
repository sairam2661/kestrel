"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<!onnx.String>, sym_name = "test_constant_string"}> ({
    %0 = "onnx.Constant"() {value = dense<"1"> : tensor<!onnx.String>} : () -> tensor<!onnx.String>
    "func.return"(%0) : (tensor<!onnx.String>) -> ()
  }) : () -> ()
}) : () -> ()

