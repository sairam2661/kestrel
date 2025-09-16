"builtin.module"() ({
  "func.func"() <{function_type = (f64, f64) -> f64, sym_name = "sparse_reduce_2d_to_1d"}> ({
  ^bb0(%arg0: f64, %arg1: f64):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %1 = "sparse_tensor.reduce"(%arg0, %arg1, %0) ({
    ^bb0(%arg2: f64, %arg3: f64):
      "sparse_tensor.yield"(%arg2) : (f64) -> ()
    }) : (f64, f64, f64) -> f64
    "func.return"(%1) : (f64) -> ()
  }) : () -> ()
}) : () -> ()

