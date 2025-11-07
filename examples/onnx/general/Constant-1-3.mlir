"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<4xi32>, sym_name = "test_int_broadcast"}> ({
    %0 = "onnx.Constant"() {value = dense<3> : tensor<4xi32>} : () -> tensor<4xi32>
    "func.return"(%0) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

