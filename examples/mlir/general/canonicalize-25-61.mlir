"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x1xf32>) -> tensor<?x1xf32>, sym_name = "reduce_sum_nofold"}> ({
  ^bb0(%arg0: tensor<?x1xf32>):
    %0 = "tosa.reduce_sum"(%arg0) <{axis = 0 : i32}> : (tensor<?x1xf32>) -> tensor<?x1xf32>
    "func.return"(%0) : (tensor<?x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

