"builtin.module"() ({
  "func.func"() <{function_type = (i64) -> f64, sym_name = "main"}> ({
  ^bb0(%arg0: i64):
    %0 = "arith.bitcast"(%arg0) : (i64) -> f64
    "func.return"(%0) : (f64) -> ()
  }) : () -> ()
}) : () -> ()

