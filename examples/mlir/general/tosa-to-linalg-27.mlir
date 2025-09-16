"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x5x4xf32>) -> (), sym_name = "reduce_float_dyn"}> ({
  ^bb0(%arg0: tensor<?x5x4xf32>):
    %0 = "tosa.reduce_sum"(%arg0) <{axis = 1 : i32}> : (tensor<?x5x4xf32>) -> tensor<?x1x4xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

