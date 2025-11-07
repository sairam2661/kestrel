"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<6xi16>, sym_name = "test_cast_f16_i16"}> ({
    %0 = "onnx.Constant"() {value = dense<[-1.500000e+00, -5.000000e-01, 3.999020e-01, 5.000000e-01, 1.500000e+00, 1.599610e+00]> : tensor<6xf16>} : () -> tensor<6xf16>
    %1 = "onnx.Cast"(%0) {saturate = 1 : si64, to = i16} : (tensor<6xf16>) -> tensor<6xi16>
    "onnx.Return"(%1) : (tensor<6xi16>) -> ()
  }) : () -> ()
}) : () -> ()

