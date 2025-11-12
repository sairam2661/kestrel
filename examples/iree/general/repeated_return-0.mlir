"builtin.module"() ({
  "func.func"() <{function_type = () -> (tensor<2x2xf32>, tensor<2x2xf32>, tensor<2x2xf32>, tensor<2x2xf32>, tensor<2x2xf32>, tensor<2x2xf32>), sym_name = "many_tensor"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[[1.000000e+00, 2.000000e+00], [3.000000e+00, 4.000000e+00]]> : tensor<2x2xf32>}> : () -> tensor<2x2xf32>
    "func.return"(%0, %0, %0, %0, %0, %0) : (tensor<2x2xf32>, tensor<2x2xf32>, tensor<2x2xf32>, tensor<2x2xf32>, tensor<2x2xf32>, tensor<2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

