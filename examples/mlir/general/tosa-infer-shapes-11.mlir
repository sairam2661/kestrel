"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4xi32>, tensor<2x4x5xi32>) -> (), sym_name = "test_static_matmul"}> ({
  ^bb0(%arg0: tensor<2x3x4xi32>, %arg1: tensor<2x4x5xi32>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %2 = "tosa.matmul"(%arg0, %arg1, %0, %1) : (tensor<2x3x4xi32>, tensor<2x4x5xi32>, tensor<1xi32>, tensor<1xi32>) -> tensor<?x?x?xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

