"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x8xf32>) -> tensor<5x8xf32>, sym_name = "rsqrt_tns"}> ({
  ^bb0(%arg0: tensor<5x8xf32>):
    %0 = "math.rsqrt"(%arg0) <{fastmath = #arith.fastmath<none>}> : (tensor<5x8xf32>) -> tensor<5x8xf32>
    "func.return"(%0) : (tensor<5x8xf32>) -> ()
  }) : () -> ()
}) : () -> ()

