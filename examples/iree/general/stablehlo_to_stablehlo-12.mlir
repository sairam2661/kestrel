"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi1>, tensor<?xf32>) -> tensor<?xf32>, sym_name = "mul_float_bool_cast"}> ({
  ^bb0(%arg0: tensor<?xi1>, %arg1: tensor<?xf32>):
    %0 = "stablehlo.convert"(%arg0) : (tensor<?xi1>) -> tensor<?xf32>
    %1 = "stablehlo.multiply"(%0, %arg1) : (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
    "func.return"(%1) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

