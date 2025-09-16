"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xi32>, tensor<?x?xi32>, tensor<3x6x5xi32>) -> (), sym_name = "scatter_static_input"}> ({
  ^bb0(%arg0: tensor<?x?x?xi32>, %arg1: tensor<?x?xi32>, %arg2: tensor<3x6x5xi32>):
    %0 = "tosa.scatter"(%arg0, %arg1, %arg2) : (tensor<?x?x?xi32>, tensor<?x?xi32>, tensor<3x6x5xi32>) -> tensor<?x?x?xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

