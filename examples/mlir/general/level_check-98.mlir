"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32x32x16384xf32>, tensor<32x32x16384xf32>) -> (tensor<32x32x16384xf32>, tensor<32x32x16384xf32>), sym_name = "test_fft2d_imag_w"}> ({
  ^bb0(%arg0: tensor<32x32x16384xf32>, %arg1: tensor<32x32x16384xf32>):
    %0:2 = "tosa.fft2d"(%arg0, %arg1) <{inverse = false}> : (tensor<32x32x16384xf32>, tensor<32x32x16384xf32>) -> (tensor<32x32x16384xf32>, tensor<32x32x16384xf32>)
    "func.return"(%0#0, %0#1) : (tensor<32x32x16384xf32>, tensor<32x32x16384xf32>) -> ()
  }) : () -> ()
}) : () -> ()

