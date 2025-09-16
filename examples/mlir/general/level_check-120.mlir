"builtin.module"() ({
  "func.func"() <{function_type = (tensor<123456x8192x8192xf32>, tensor<123456x8192x8192xf32>) -> (tensor<123456x8192x8192xf32>, tensor<123456x8192x8192xf32>), sym_name = "test_fft2d_tensor_size_invalid"}> ({
  ^bb0(%arg0: tensor<123456x8192x8192xf32>, %arg1: tensor<123456x8192x8192xf32>):
    %0:2 = "tosa.fft2d"(%arg0, %arg1) <{inverse = false}> : (tensor<123456x8192x8192xf32>, tensor<123456x8192x8192xf32>) -> (tensor<123456x8192x8192xf32>, tensor<123456x8192x8192xf32>)
    "func.return"(%0#0, %0#1) : (tensor<123456x8192x8192xf32>, tensor<123456x8192x8192xf32>) -> ()
  }) : () -> ()
}) : () -> ()

