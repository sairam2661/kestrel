"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x16384x16xf32>) -> (tensor<13x16384x9xf32>, tensor<13x16384x9xf32>), sym_name = "test_rfft2d_input_h"}> ({
  ^bb0(%arg0: tensor<13x16384x16xf32>):
    %0:2 = "tosa.rfft2d"(%arg0) : (tensor<13x16384x16xf32>) -> (tensor<13x16384x9xf32>, tensor<13x16384x9xf32>)
    "func.return"(%0#0, %0#1) : (tensor<13x16384x9xf32>, tensor<13x16384x9xf32>) -> ()
  }) : () -> ()
}) : () -> ()

