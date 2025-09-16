"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5xi32>, tensor<3x6xi32>) -> (), sym_name = "gather_static"}> ({
  ^bb0(%arg0: tensor<3x4x5xi32>, %arg1: tensor<3x6xi32>):
    %0 = "tosa.gather"(%arg0, %arg1) : (tensor<3x4x5xi32>, tensor<3x6xi32>) -> tensor<?x?x?xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

