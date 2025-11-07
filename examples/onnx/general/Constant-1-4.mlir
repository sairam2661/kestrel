"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2xi8>, sym_name = "test_int_dense"}> ({
    %0 = "onnx.Constant"() {value = dense<[-1, -2]> : tensor<2xi8>} : () -> tensor<2xi8>
    "func.return"(%0) : (tensor<2xi8>) -> ()
  }) : () -> ()
}) : () -> ()

