"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> i32, sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0, "eq") : (i32, i32) -> i1
    %2 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %3 = "arith.cmpi"(%arg1, %2, "gt") : (i64, i64) -> i1
    %4 = "arith.addf"(%arg0, %arg1) : (i32, i64) -> f64
    %5 = "arith.constant"() <{value = 0.0 : f64}> : () -> f64
    %6 = "arith.cmpf"(%4, %5, "ne") : (f64, f64) -> i1
    "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()