"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "householder_test", sym_visibility = "public"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[[0.191519454, 0.622108757, 0.437727749], [0.785358607, 0.779975831, 0.272592604], [0.276464254, 0.801872193, 0.958139359], [0.875932633, 0.357817262, 0.500995159]]> : tensor<4x3xf32>}> : () -> tensor<4x3xf32>
    %1 = "util.unfoldable_constant"() <{value = dense<[0.683462917, 0.712702036]> : tensor<2xf32>}> : () -> tensor<2xf32>
    %2 = "stablehlo.custom_call"(%0, %1) <{call_target_name = "ProductOfElementaryHouseholderReflectors"}> : (tensor<4x3xf32>, tensor<2xf32>) -> tensor<4x3xf32>
    "check.expect_almost_eq_const"(%2) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[[0.316537082, 0.106445313, 0.326818168], [-0.536763489, 0.370895714, -0.314826518], [-0.188953072, -0.542067647, 0.632086873], [-0.598667502, -0.161778182, 0.0817795693]]> : tensor<4x3xf32>}> : (tensor<4x3xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

