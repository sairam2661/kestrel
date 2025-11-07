"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x5x?xf32>) -> tensor<1x3x5x?xf16>, sym_name = "test_f32_to_dlf16"}> ({
  ^bb0(%arg0: tensor<1x3x5x?xf32>):
    %0 = "zhigh.F32ToDLF16"(%arg0) : (tensor<1x3x5x?xf32>) -> tensor<1x3x5x?xf16>
    "func.return"(%0) : (tensor<1x3x5x?xf16>) -> ()
  }) : () -> ()
}) : () -> ()

