"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>) -> tensor<?xf32>, sym_name = "non_static_shape_rsqrt_op"}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0 = "math.rsqrt"(%arg0) <{fastmath = #arith.fastmath<none>}> : (tensor<?xf32>) -> tensor<?xf32>
    "func.return"(%0) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

