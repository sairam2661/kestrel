"builtin.module"() ({
  "func.func"() <{function_type = () -> (tensor<12xf8E4M3FN>, tensor<12xf8E4M3FN>), sym_name = "test_cast_f32_f8E4M3FN"}> ({
    %0 = "onnx.Constant"() {value = dense<[0.000000e+00, -0.000000e+00, 4.000000e+02, -4.000000e+02, 4.480000e+02, -4.480000e+02, 6.000000e+02, -6.000000e+02, 0x7F800000, 0xFF800000, 0x7F800001, 0xFF800001]> : tensor<12xf32>} : () -> tensor<12xf32>
    %1 = "onnx.Cast"(%0) {saturate = 0 : si64, to = f8E4M3FN} : (tensor<12xf32>) -> tensor<12xf8E4M3FN>
    %2 = "onnx.Cast"(%0) {saturate = 1 : si64, to = f8E4M3FN} : (tensor<12xf32>) -> tensor<12xf8E4M3FN>
    "onnx.Return"(%1, %2) : (tensor<12xf8E4M3FN>, tensor<12xf8E4M3FN>) -> ()
  }) : () -> ()
}) : () -> ()

