"builtin.module"() ({
  "func.func"() <{function_type = (f64, f64) -> f64, sym_name = "complexFloatOps"}> ({
    ^bb0(%arg0: f64, %arg1: f64):
      %0 = "arith.addf"(%arg0, %arg1) : (f64, f64) -> f64
      %1 = "arith.cmpf"("oeq", %0, %arg0) : (f64, f64) -> i1
      %2 = "arith.select"(%1, %0, %arg1) : (i1, f64, f64) -> f64
      "func.return"(%2) : (f64) -> ()
  }) : () -> ()
}) : () -> ()