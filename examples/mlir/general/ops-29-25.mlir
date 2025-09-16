"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x8x16xf32>) -> (tensor<13x8x9xf32>, tensor<13x8x9xf32>), sym_name = "test_rfft2d_with_local_bound"}> ({
  ^bb0(%arg0: tensor<13x8x16xf32>):
    %0:2 = "tosa.rfft2d"(%arg0) <{local_bound = true}> : (tensor<13x8x16xf32>) -> (tensor<13x8x9xf32>, tensor<13x8x9xf32>)
    "func.return"(%0#0, %0#1) : (tensor<13x8x9xf32>, tensor<13x8x9xf32>) -> ()
  }) : () -> ()
}) : () -> ()

