"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>, tensor<?x?xi32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>, sym_name = "scatter_dynamic"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>, %arg1: tensor<?x?xi32>, %arg2: tensor<?x?x?xf32>):
    %0 = "tosa.scatter"(%arg0, %arg1, %arg2) : (tensor<?x?x?xf32>, tensor<?x?xi32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    "func.return"(%0) : (tensor<?x?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

