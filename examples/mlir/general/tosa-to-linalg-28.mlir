"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>) -> (), sym_name = "reduce_float_dyn_rank_1"}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0 = "tosa.reduce_sum"(%arg0) <{axis = 0 : i32}> : (tensor<?xf32>) -> tensor<1xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

