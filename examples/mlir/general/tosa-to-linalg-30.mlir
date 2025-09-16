"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>) -> (), sym_name = "reduce_float_dyn_multiple"}> ({
  ^bb0(%arg0: tensor<?x?xf32>):
    %0 = "tosa.reduce_max"(%arg0) <{axis = 1 : i32, nan_mode = "PROPAGATE"}> : (tensor<?x?xf32>) -> tensor<?x1xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

