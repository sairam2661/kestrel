"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3xi64>, sym_name = "test_constant_3"}> ({
    %0 = "onnx.Constant"() {value_ints = [1, 2, 3]} : () -> tensor<3xi64>
    "onnx.Return"(%0) : (tensor<3xi64>) -> ()
  }) : () -> ()
}) : () -> ()

