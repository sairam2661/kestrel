"builtin.module"() ({
  "func.func"() <{function_type = (f64, f64) -> f64, sym_name = "main"}> ({
  ^bb0(%arg0: f64, %arg1: f64):
    %0 = "arith.cmpf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>, predicate = 9 : i64}> : (f64, f64) -> i1
    %1 = "arith.select"(%0, %arg0, %arg1) : (i1, f64, f64) -> f64
    %2 = "arith.cmpf"(%arg1, %arg1) <{fastmath = #arith.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %3 = "arith.select"(%2, %arg1, %1) : (i1, f64, f64) -> f64
    "func.return"(%3) : (f64) -> ()
  }) : () -> ()
}) : () -> ()

