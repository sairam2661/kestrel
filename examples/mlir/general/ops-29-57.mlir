"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xf32>, tensor<*xf32>) -> tensor<13x21x3xf32>, sym_name = "test_mul_unranked_b"}> ({
  ^bb0(%arg0: tensor<13x21x3xf32>, %arg1: tensor<*xf32>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = "tosa.mul"(%arg0, %arg1, %0) : (tensor<13x21x3xf32>, tensor<*xf32>, tensor<1xi8>) -> tensor<13x21x3xf32>
    "func.return"(%1) : (tensor<13x21x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

