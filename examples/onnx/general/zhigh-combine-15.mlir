"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x5x?xf16>, tensor<3xi64>) -> tensor<5x3x?xf16>, sym_name = "test_delay_dlf16_to_f32"}> ({
  ^bb0(%arg0: tensor<1x3x5x?xf16>, %arg1: tensor<3xi64>):
    %0 = "zhigh.DLF16ToF32"(%arg0) : (tensor<1x3x5x?xf16>) -> tensor<1x3x5x?xf32>
    %1 = "onnx.Reshape"(%0, %arg1) {allowzero = 0 : si64} : (tensor<1x3x5x?xf32>, tensor<3xi64>) -> tensor<3x5x?xf32>
    %2 = "onnx.Transpose"(%1) {perm = [1, 0, 2]} : (tensor<3x5x?xf32>) -> tensor<5x3x?xf32>
    %3 = "zhigh.F32ToDLF16"(%2) : (tensor<5x3x?xf32>) -> tensor<5x3x?xf16>
    "onnx.Return"(%3) : (tensor<5x3x?xf16>) -> ()
  }) : () -> ()
}) : () -> ()

