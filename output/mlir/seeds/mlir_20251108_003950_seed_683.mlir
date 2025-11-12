"builtin.module"() ({
  "func.func"() <{function_type = (i64, f64) -> (i64, f64), sym_name = "mixed_types_and_loops"}> ({
  ^bb0(%arg0: i64, %arg1: f64):
    %0 = "arith.constant"() <{value = 10 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 5.0 : f64}> : () -> f64
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflowFlags}> : (i64, i64) -> i64
    %3 = "arith.addf"(%arg1, %1) <{roundingMode = #arithRoundingModeNearestTiesToEven}> : (f64, f64) -> f64
    %4 = "scf.if"(%3) ({
    ^bb0:
      %5 = "arith.constant"() <{value = 1 : i64}> : () -> i64
      "scf.yield"(%5) : (i64) -> ()
    }, {
    ^bb1:
      %6 = "arith.constant"() <{value = 0 : i64}> : () -> i64
      "scf.yield"(%6) : (i64) -> ()
    }) : (i64) -> i64
    "scf.for"(%arg0, %2) <{upperBound = 10 : i64, step = 1 : i64}> ({
    ^bb0(%iv: i64):
      %7 = "arith.addi"(%iv, %arg0) <{overflowFlags = #arith_overflowFlags}> : (i64, i64) -> i64
      "scf.yield"(%7) : (i64) -> ()
    }) : (i64) -> ()
    "func.return"(%4, %3) : (i64, f64) -> ()
  }) : () -> ()
}) : () -> ()