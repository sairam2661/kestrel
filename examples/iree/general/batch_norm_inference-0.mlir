"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "batchnorm_inference_4x2"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00], [5.000000e+00, 6.000000e+00, 7.000000e+00, 8.000000e+00]]> : tensor<2x4xf32>}> : () -> tensor<2x4xf32>
    %1 = "util.unfoldable_constant"() <{value = dense<1.000000e+00> : tensor<4xf32>}> : () -> tensor<4xf32>
    %2 = "util.unfoldable_constant"() <{value = dense<2.000000e+00> : tensor<4xf32>}> : () -> tensor<4xf32>
    %3 = "util.unfoldable_constant"() <{value = dense<1.000000e+00> : tensor<4xf32>}> : () -> tensor<4xf32>
    %4 = "util.unfoldable_constant"() <{value = dense<1.000000e+00> : tensor<4xf32>}> : () -> tensor<4xf32>
    %5 = "stablehlo.batch_norm_inference"(%0, %1, %2, %3, %4) <{epsilon = 1.000000e-03 : f32, feature_index = 1 : i64}> : (tensor<2x4xf32>, tensor<4xf32>, tensor<4xf32>, tensor<4xf32>, tensor<4xf32>) -> tensor<2x4xf32>
    "check.expect_almost_eq_const"(%5) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[[2.000000e+00, 2.999500e+00, 3.999000e+00, 4.998500e+00], [5.998000e+00, 6.997500e+00, 7.997000e+00, 8.996500e+00]]> : tensor<2x4xf32>}> : (tensor<2x4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

