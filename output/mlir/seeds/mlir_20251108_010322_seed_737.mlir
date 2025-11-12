"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2xf32>, tensor<3xi32>) -> tensor<1x4xf32>, sym_name = "mixed_type_gather_test"}> ({
  ^bb0(%arg0: tensor<1x2xf32>, %arg1: tensor<3xi32>):
    %0 = "tosa.gather"(%arg0, %arg1) : (tensor<1x2xf32>, tensor<3xi32>) -> tensor<1x4xf32>
    %1 = "arith.addf"(%0, %0) : (tensor<1x4xf32>, tensor<1x4xf32>) -> tensor<1x4xf32>
    "func.return"(%1) : (tensor<1x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()