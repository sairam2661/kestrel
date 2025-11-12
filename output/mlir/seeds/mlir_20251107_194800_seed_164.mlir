"builtin.module"() ({
  "func.func"() <{function_type = (tensor<42x3xf32>, tensor<42x3xf32>) -> tensor<42x3xf32>, sym_name = "tosa_add_with_const"}> ({
  ^bb0(%arg0: tensor<42x3xf32>, %arg1: tensor<42x3xf32>):
    %cst = "tosa.const"() <{value = dense<2.000000e+00>: tensor<42x3xf32>}> : () -> tensor<42x3xf32>
    %0 = "tosa.add"(%arg0, %cst) : (tensor<42x3xf32>, tensor<42x3xf32>) -> tensor<42x3xf32>
    %1 = "tosa.add"(%0, %arg1) : (tensor<42x3xf32>, tensor<42x3xf32>) -> tensor<42x3xf32>
    "func.return"(%1) : (tensor<42x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()