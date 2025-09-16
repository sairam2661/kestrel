"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5xi32>, tensor<?x?xi32>, tensor<?x?x?xi32>) -> (), sym_name = "scatter_static_values"}> ({
  ^bb0(%arg0: tensor<3x4x5xi32>, %arg1: tensor<?x?xi32>, %arg2: tensor<?x?x?xi32>):
    %0 = "tosa.scatter"(%arg0, %arg1, %arg2) : (tensor<3x4x5xi32>, tensor<?x?xi32>, tensor<?x?x?xi32>) -> tensor<?x?x?xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

