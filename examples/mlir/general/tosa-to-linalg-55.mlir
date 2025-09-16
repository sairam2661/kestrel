"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x3x2xf32>, tensor<?x3xi32>) -> (), sym_name = "gather_float_dyn"}> ({
  ^bb0(%arg0: tensor<?x3x2xf32>, %arg1: tensor<?x3xi32>):
    %0 = "tosa.gather"(%arg0, %arg1) : (tensor<?x3x2xf32>, tensor<?x3xi32>) -> tensor<?x3x2xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

