"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x8x8x8xi16>, tensor<1x8x8x8xi16>) -> tensor<1x8x8x8xi32>, sym_name = "test_mul_non_zero_shift"}> ({
  ^bb0(%arg0: tensor<1x8x8x8xi16>, %arg1: tensor<1x8x8x8xi16>):
    %0 = "tosa.const"() <{values = dense<1> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = "tosa.mul"(%arg0, %arg1, %0) : (tensor<1x8x8x8xi16>, tensor<1x8x8x8xi16>, tensor<1xi8>) -> tensor<1x8x8x8xi32>
    "func.return"(%1) : (tensor<1x8x8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()

