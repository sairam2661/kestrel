"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3xi1>, sym_name = "test_lessorequal"}> ({
    %0 = "onnx.Constant"() {value = dense<0> : tensor<3xi64>} : () -> tensor<3xi64>
    %1 = "onnx.Constant"() {value = dense<[-1, 0, 2]> : tensor<3xi64>} : () -> tensor<3xi64>
    %2 = "onnx.LessOrEqual"(%0, %1) : (tensor<3xi64>, tensor<3xi64>) -> tensor<3xi1>
    "onnx.Return"(%2) : (tensor<3xi1>) -> ()
  }) : () -> ()
}) : () -> ()

