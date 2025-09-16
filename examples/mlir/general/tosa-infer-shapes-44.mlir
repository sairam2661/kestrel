"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x4x?xi32>, tensor<3x?xi32>, tensor<?x?x5xi32>) -> (), sym_name = "scatter_minimum_static"}> ({
  ^bb0(%arg0: tensor<?x4x?xi32>, %arg1: tensor<3x?xi32>, %arg2: tensor<?x?x5xi32>):
    %0 = "tosa.scatter"(%arg0, %arg1, %arg2) : (tensor<?x4x?xi32>, tensor<3x?xi32>, tensor<?x?x5xi32>) -> tensor<?x?x?xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

