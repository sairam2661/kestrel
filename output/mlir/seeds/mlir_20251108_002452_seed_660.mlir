"builtin.module"() ({
  "func.func"() <{function_type = (f64, f64) -> f64, sym_name = "complex_math"}> ({
  ^bb0(%arg0: f64, %arg1: f64):
    %0 = "arith.addf"(%arg0, %arg1) : (f64, f64) -> f64
    %1 = "arith.cmpf"(%arg0, %arg1) <{predicate = "oeq"}> : (f64, f64) -> i1
    %2 = "arith.cmpi"(%1, %c0_i1) : (i1, i1) -> i1
    %3 = "scf.if"(%2) ({
    ^bb1:
      "scf.yield"() : () -> ()
    }) : () -> ()
    %4 = "tosa.const"() <{value = 2.0 : f64}> : () -> f64
    %5 = "arith.mulf"(%0, %4) : (f64, f64) -> f64
    "func.return"(%5) : (f64) -> ()
  }) : () -> ()
}) : () -> ()