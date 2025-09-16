"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x4x8xf32>, tensor<1x4x8xf32>) -> (tensor<1x4x8xf32>, tensor<1x4x8xf32>), sym_name = "test_static_fft2d"}> ({
  ^bb0(%arg0: tensor<1x4x8xf32>, %arg1: tensor<1x4x8xf32>):
    %0:2 = "tosa.fft2d"(%arg0, %arg1) <{inverse = false}> : (tensor<1x4x8xf32>, tensor<1x4x8xf32>) -> (tensor<1x4x8xf32>, tensor<1x4x8xf32>)
    "func.return"(%0#0, %0#1) : (tensor<1x4x8xf32>, tensor<1x4x8xf32>) -> ()
  }) : () -> ()
}) : () -> ()

