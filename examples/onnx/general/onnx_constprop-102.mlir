"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<8xi32>, sym_name = "test_cast_f32_i32"}> ({
    %0 = "onnx.Constant"() {value = dense<[2.300000e+00, 3.600000e+00, -1.000000e+10, 1.000000e+10, 0x7F800000, 0xFF800000, 0x7F800001, 0xFFFFFFFF]> : tensor<8xf32>} : () -> tensor<8xf32>
    %1 = "onnx.Cast"(%0) {saturate = 1 : si64, to = i32} : (tensor<8xf32>) -> tensor<8xi32>
    "onnx.Return"(%1) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()

