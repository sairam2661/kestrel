"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x2x8xf32>) -> (), sym_name = "test_static_rfft2d"}> ({
  ^bb0(%arg0: tensor<5x2x8xf32>):
    %0:2 = "tosa.rfft2d"(%arg0) : (tensor<5x2x8xf32>) -> (tensor<?x?x?xf32>, tensor<?x?x?xf32>)
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

