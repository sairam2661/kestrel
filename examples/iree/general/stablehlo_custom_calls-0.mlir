"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x3xf32>, tensor<2xf32>) -> tensor<4x3xf32>, sym_name = "householder", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<4x3xf32>, %arg1: tensor<2xf32>):
    %0 = "stablehlo.custom_call"(%arg0, %arg1) <{call_target_name = "ProductOfElementaryHouseholderReflectors"}> : (tensor<4x3xf32>, tensor<2xf32>) -> tensor<4x3xf32>
    "func.return"(%0) : (tensor<4x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

