"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<i64>, sym_name = "test_constant_1"}> ({
    %0 = "onnx.Constant"() {value_int = 1 : si64} : () -> tensor<i64>
    "onnx.Return"(%0) : (tensor<i64>) -> ()
  }) : () -> ()
}) : () -> ()

