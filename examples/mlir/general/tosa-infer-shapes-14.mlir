"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x3x?xi32>, tensor<?x?x5xi32>) -> (), sym_name = "test_dynamic_mixed_matmul"}> ({
  ^bb0(%arg0: tensor<?x3x?xi32>, %arg1: tensor<?x?x5xi32>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %2 = "tosa.matmul"(%arg0, %arg1, %0, %1) : (tensor<?x3x?xi32>, tensor<?x?x5xi32>, tensor<1xi32>, tensor<1xi32>) -> tensor<?x?x?xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

