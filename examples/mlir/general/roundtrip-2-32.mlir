"builtin.module"() ({
  "func.func"() <{function_type = (f64) -> f64, sym_name = "sparse_select"}> ({
  ^bb0(%arg0: f64):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %1 = "sparse_tensor.select"(%arg0) ({
    ^bb0(%arg1: f64):
      %2 = "arith.cmpf"(%arg1, %0) <{fastmath = #arith.fastmath<none>, predicate = 2 : i64}> : (f64, f64) -> i1
      "sparse_tensor.yield"(%2) : (i1) -> ()
    }) : (f64) -> f64
    "func.return"(%1) : (f64) -> ()
  }) : () -> ()
}) : () -> ()

