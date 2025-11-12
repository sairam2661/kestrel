"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi32>, sym_name = "matrix_multiply_and_add"}> ({
  ^bb0(%arg0: tensor<3x3xi32>, %arg1: tensor<3x3xi32>):
    %0 = "tosa.matmul"(%arg0, %arg1) : (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi32>
    %1 = "tosa.const"() <{values = dense<1> : tensor<3x3xi32>}> : () -> tensor<3x3xi32>
    %2 = "tosa.add"(%0, %1) : (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi32>
    "func.return"(%2) : (tensor<3x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()