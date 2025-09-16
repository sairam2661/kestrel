"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x14x19xi8>, tensor<1x19x28xi8>) -> tensor<1x14x28xi32>, sym_name = "test_matmul"}> ({
  ^bb0(%arg0: tensor<1x14x19xi8>, %arg1: tensor<1x19x28xi8>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = "tosa.matmul"(%arg0, %arg1, %0, %1) : (tensor<1x14x19xi8>, tensor<1x19x28xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<1x14x28xi32>
    "func.return"(%2) : (tensor<1x14x28xi32>) -> ()
  }) : () -> ()
}) : () -> ()

