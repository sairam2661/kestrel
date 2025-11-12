"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x10xf32>, index) -> tensor<3x10xf32>, sym_name = "complex_arithmatic"}> ({
  ^bb0(%arg0: tensor<3x10xf32>, %arg1: index):
    %0 = "arith.constant"() <{value = dense<5.000000e+00> : tensor<3x10xf32>}> : () -> tensor<3x10xf32>
    %1 = "arith.addf"(%arg0, %0) : (tensor<3x10xf32>, tensor<3x10xf32>) -> tensor<3x10xf32>
    %2 = "arith.mulf"(%1, %0) : (tensor<3x10xf32>, tensor<3x10xf32>) -> tensor<3x10xf32>
    %3 = "arith.subf"(%2, %arg0) : (tensor<3x10xf32>, tensor<3x10xf32>) -> tensor<3x10xf32>
    "func.return"(%3) : (tensor<3x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()