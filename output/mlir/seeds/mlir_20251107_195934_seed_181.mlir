"builtin.module"() ({
  "func.func"() <{function_type = (f64, i32) -> (f64, i32), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: f64, %arg1: i32):
    %0 = "arith.constant"() <{value = 3.14 : f64}> : () -> f64
    %1 = "arith.addf"(%arg0, %0) : (f64, f64) -> f64
    %2 = "arith.cmpi"(%arg1, %0) <{predicate = "eq"}> : (i32, f64) -> i1
    %3 = "arith.cmpf"(%arg0, %0) <{predicate = "oeq"}> : (f64, f64) -> i1
    %4 = "scf.if"(%2) ({
      %5 = "arith.extui"(%arg1) : (i32) -> i64
      "scf.yield"(%5) : (i64) -> ()
    }, {
      %6 = "arith.extsi"(%arg1) : (i32) -> i64
      "scf.yield"(%6) : (i64) -> ()
    }) : (i1) -> (i64)
    "func.return"(%1, %4) : (f64, i64) -> ()
  }) : () -> ()
}) : () -> ()