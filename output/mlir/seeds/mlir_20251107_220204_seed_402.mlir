"builtin.module"() ({
  "func.func"() <{function_type = (f64, f64) -> f64, sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: f64, %arg1: f64):
      %0 = "arith.addf"(%arg0, %arg1) : (f64, f64) -> f64
      %1 = "arith.cmpf"(%0, %arg1) <{predicate = "oeq"}> : (f64, f64) -> i1
      %2 = "arith.cmpi"(%1, "0" ) <{predicate = "ne"}> : (i1, i1) -> i1
      %3 = "arith.mulf"(%arg0, %arg1) : (f64, f64) -> f64
      %4 = "arith.subf"(%arg0, %arg1) : (f64, f64) -> f64
      %5 = "arith.divf"(%3, %4) : (f64, f64) -> f64
      %6 = "spirv.ReturnValue"(%5) : (f64) -> ()
    }) : () -> ()
  }) : () -> ()