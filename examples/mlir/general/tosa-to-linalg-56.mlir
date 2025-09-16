"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>, tensor<?x?xi32>) -> (), sym_name = "gather_float_all_dynamic"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>, %arg1: tensor<?x?xi32>):
    %0 = "tosa.gather"(%arg0, %arg1) : (tensor<?x?x?xf32>, tensor<?x?xi32>) -> tensor<?x?x?xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

