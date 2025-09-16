"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> (tensor<?x?x?xf32>, tensor<?x?x?xf32>), sym_name = "test_dynamic_fft2d"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>, %arg1: tensor<?x?x?xf32>):
    %0:2 = "tosa.fft2d"(%arg0, %arg1) <{inverse = true}> : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> (tensor<?x?x?xf32>, tensor<?x?x?xf32>)
    "func.return"(%0#0, %0#1) : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

