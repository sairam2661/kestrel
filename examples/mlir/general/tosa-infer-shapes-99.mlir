"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x4x8xf32>, tensor<?x4x8xf32>) -> (tensor<?x4x8xf32>, tensor<?x4x8xf32>), sym_name = "test_dynamic_batch_fft2d"}> ({
  ^bb0(%arg0: tensor<?x4x8xf32>, %arg1: tensor<?x4x8xf32>):
    %0:2 = "tosa.fft2d"(%arg0, %arg1) <{inverse = false}> : (tensor<?x4x8xf32>, tensor<?x4x8xf32>) -> (tensor<?x4x8xf32>, tensor<?x4x8xf32>)
    "func.return"(%0#0, %0#1) : (tensor<?x4x8xf32>, tensor<?x4x8xf32>) -> ()
  }) : () -> ()
}) : () -> ()

