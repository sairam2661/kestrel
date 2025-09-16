"builtin.module"() ({
  "func.func"() <{function_type = (f64) -> f64, sym_name = "exp2f_func"}> ({
  ^bb0(%arg1: f64):
    %1 = "math.exp2"(%arg1) <{fastmath = #arith.fastmath<none>}> : (f64) -> f64
    "func.return"(%1) : (f64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<1xf32>) -> tensor<1xf32>, sym_name = "exp2f_func_tensor"}> ({
  ^bb0(%arg0: tensor<1xf32>):
    %0 = "math.exp2"(%arg0) <{fastmath = #arith.fastmath<none>}> : (tensor<1xf32>) -> tensor<1xf32>
    "func.return"(%0) : (tensor<1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

