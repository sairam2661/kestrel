"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1xf32>) -> (tensor<1x1x1xf32>, tensor<1x1x1xf32>), sym_name = "test_rfft2d_width1"}> ({
  ^bb0(%arg0: tensor<1x1x1xf32>):
    %0:2 = "tosa.rfft2d"(%arg0) : (tensor<1x1x1xf32>) -> (tensor<1x1x1xf32>, tensor<1x1x1xf32>)
    "func.return"(%0#0, %0#1) : (tensor<1x1x1xf32>, tensor<1x1x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

