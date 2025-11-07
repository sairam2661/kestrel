"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<f32>, sym_name = "test_constant_2"}> ({
    %0 = "onnx.Constant"() {value_float = 2.000000e+00 : f32} : () -> tensor<f32>
    "onnx.Return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

