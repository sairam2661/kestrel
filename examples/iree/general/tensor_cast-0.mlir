"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor_cast"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[[1.000000e+00, 2.000000e+00, 3.000000e+00], [4.000000e+00, 5.000000e+00, 6.000000e+00]]> : tensor<2x3xf32>}> : () -> tensor<2x3xf32>
    %1 = "tensor.cast"(%0) : (tensor<2x3xf32>) -> tensor<2x?xf32>
    %2 = "util.optimization_barrier"(%1) : (tensor<2x?xf32>) -> tensor<2x?xf32>
    %3 = "tensor.cast"(%1) : (tensor<2x?xf32>) -> tensor<2x3xf32>
    "check.expect_almost_eq_const"(%3) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[[1.000000e+00, 2.000000e+00, 3.000000e+00], [4.000000e+00, 5.000000e+00, 6.000000e+00]]> : tensor<2x3xf32>}> : (tensor<2x3xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

