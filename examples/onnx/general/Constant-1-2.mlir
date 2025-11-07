"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<1xi8>, sym_name = "test_int_single"}> ({
    %0 = "onnx.Constant"() {value = dense<3> : tensor<1xi8>} : () -> tensor<1xi8>
    "func.return"(%0) : (tensor<1xi8>) -> ()
  }) : () -> ()
}) : () -> ()

