"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xi32>, tensor<13x1x3xi32>) -> tensor<13x21x3xi32>, sym_name = "test_i32_mul"}> ({
  ^bb0(%arg0: tensor<13x21x3xi32>, %arg1: tensor<13x1x3xi32>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = "tosa.mul"(%arg0, %arg1, %0) : (tensor<13x21x3xi32>, tensor<13x1x3xi32>, tensor<1xi8>) -> tensor<13x21x3xi32>
    "func.return"(%1) : (tensor<13x21x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

