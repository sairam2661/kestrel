"builtin.module"() ({
  "func.func"() <{function_type = (f64, f64) -> f64, sym_name = "fuzz_arith_complex"}> ({
  ^bb0(%arg0: f64, %arg1: f64):
    %0 = "arith.addf"(%arg0, %arg1) : (f64, f64) -> f64
    %1 = "arith.cmpf"(%arg0, %arg1, "oeq") : (f64, f64) -> i1
    %2 = "scf.if"(%1) ({
      %3 = "arith.subf"(%arg0, %arg1) : (f64, f64) -> f64
      "scf.yield"(%3) : (f64) -> ()
    }, {
      %4 = "arith.mulf"(%arg0, %arg1) : (f64, f64) -> f64
      "scf.yield"(%4) : (f64) -> ()
    }) : (f64) -> f64
    %5 = "arith.cmpf"(%2, %arg0, "olt") : (f64, f64) -> i1
    %6 = "scf.if"(%5) ({
      %7 = "arith.divf"(%arg0, %arg1) : (f64, f64) -> f64
      "scf.yield"(%7) : (f64) -> ()
    }, {
      %8 = "arith.addf"(%arg1, %arg0) : (f64, f64) -> f64
      "scf.yield"(%8) : (f64) -> ()
    }) : (f64) -> f64
    "func.return"(%6) : (f64) -> ()
  }) : () -> ()
}) : () -> ()