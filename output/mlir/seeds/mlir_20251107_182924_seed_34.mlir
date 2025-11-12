"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (i8, f64), sym_name = "mixedDialectComplexity"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.cmpf"(%arg0, 3.14) <{predicate = "oeq"}> : (f32, f32) -> i1
    %1 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %2 = "arith.cmpi"(%arg1, 42) <{predicate = "sgt"}> : (i32, i32) -> i1
    %3 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %4 = "arith.subi"(%arg1, %3) : (i32, i32) -> i32
    %5 = "arith.trunci"(%arg1) <{overflowFlags = #arith_overflow_flags}> : (i32) -> i8
    %6 = "tosa.const"() <{value = 2.718 : f64}> : () -> f64
    "func.return"(%5, %6) : (i8, f64) -> ()
  }) : () -> ()
}) : () -> ()