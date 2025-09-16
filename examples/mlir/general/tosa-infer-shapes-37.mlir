"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xi32>, tensor<3x6xi32>) -> (), sym_name = "gather_dynamic_values"}> ({
  ^bb0(%arg0: tensor<?x?x?xi32>, %arg1: tensor<3x6xi32>):
    %0 = "tosa.gather"(%arg0, %arg1) : (tensor<?x?x?xi32>, tensor<3x6xi32>) -> tensor<?x?x?xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

