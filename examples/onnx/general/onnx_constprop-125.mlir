"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3xi64>, sym_name = "test_constant_of_shape"}> ({
    %0 = "onnx.Constant"() {value = dense<3> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.ConstantOfShape"(%0) {value = dense<2> : tensor<1xi64>} : (tensor<1xi64>) -> tensor<3xi64>
    "onnx.Return"(%1) : (tensor<3xi64>) -> ()
  }) : () -> ()
}) : () -> ()

