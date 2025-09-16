"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x8x16384xf32>) -> (tensor<13x8x8193xf32>, tensor<13x8x8193xf32>), sym_name = "test_rfft2d_input_w"}> ({
  ^bb0(%arg0: tensor<13x8x16384xf32>):
    %0:2 = "tosa.rfft2d"(%arg0) : (tensor<13x8x16384xf32>) -> (tensor<13x8x8193xf32>, tensor<13x8x8193xf32>)
    "func.return"(%0#0, %0#1) : (tensor<13x8x8193xf32>, tensor<13x8x8193xf32>) -> ()
  }) : () -> ()
}) : () -> ()

