"builtin.module"() ({
  "func.func"() <{function_type = () -> (tensor<12xf8E5M2FNUZ>, tensor<12xf8E5M2FNUZ>), sym_name = "test_cast_f32_f8E5M2FNUZ"}> ({
    %0 = "onnx.Constant"() {value = dense<[0.000000e+00, -0.000000e+00, 4.000000e+04, -4.000000e+04, 5.734400e+04, -5.734400e+04, 7.000000e+04, -7.000000e+04, 0x7F800000, 0xFF800000, 0x7F800001, 0xFF800001]> : tensor<12xf32>} : () -> tensor<12xf32>
    %1 = "onnx.Cast"(%0) {saturate = 0 : si64, to = f8E5M2FNUZ} : (tensor<12xf32>) -> tensor<12xf8E5M2FNUZ>
    %2 = "onnx.Cast"(%0) {saturate = 1 : si64, to = f8E5M2FNUZ} : (tensor<12xf32>) -> tensor<12xf8E5M2FNUZ>
    "onnx.Return"(%1, %2) : (tensor<12xf8E5M2FNUZ>, tensor<12xf8E5M2FNUZ>) -> ()
  }) : () -> ()
}) : () -> ()

