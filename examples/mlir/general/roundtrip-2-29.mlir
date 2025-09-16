"builtin.module"() ({
  "func.func"() <{function_type = (f64) -> f64, sym_name = "sparse_unary"}> ({
  ^bb0(%arg0: f64):
    %0 = "sparse_tensor.unary"(%arg0) ({
    ^bb0(%arg1: f64):
      "sparse_tensor.yield"(%arg1) : (f64) -> ()
    }, {
      %1 = "arith.constant"() <{value = -1.000000e+00 : f64}> : () -> f64
      "sparse_tensor.yield"(%1) : (f64) -> ()
    }) : (f64) -> f64
    "func.return"(%0) : (f64) -> ()
  }) : () -> ()
}) : () -> ()

