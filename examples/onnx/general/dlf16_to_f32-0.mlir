"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x5x?xf16>) -> tensor<1x3x5x?xf32>, sym_name = "test_dlf16_to_f32"}> ({
  ^bb0(%arg0: tensor<1x3x5x?xf16>):
    %0 = "zhigh.DLF16ToF32"(%arg0) : (tensor<1x3x5x?xf16>) -> tensor<1x3x5x?xf32>
    "func.return"(%0) : (tensor<1x3x5x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

