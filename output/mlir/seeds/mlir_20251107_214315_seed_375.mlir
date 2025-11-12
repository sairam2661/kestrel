"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types_function"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %1) <{fastmath = #arith_fastmath_flags}> : (f32, f32) -> f32
    %4 = "arith.cmpi"(%2, %0) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %5 = "arith.cmpf"(%3, %1) <{predicate = 0 : i64}> : (f32, f32) -> i1
    %6 = "scf.if"(%4) ({
    ^bb0:
      %7 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      %8 = "arith.constant"() <{value = 4.0 : f32}> : () -> f32
      "scf.yield"(%7, %8) : (i32, f32) -> ()
    }, {
    ^bb1:
      %9 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %10 = "arith.constant"() <{value = 6.0 : f32}> : () -> f32
      "scf.yield"(%9, %10) : (i32, f32) -> ()
    }) : (i32, f32) -> ()
    %11 = "arith.addi"(%6#0, %2) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %12 = "arith.addf"(%6#1, %3) <{fastmath = #arith_fastmath_flags}> : (f32, f32) -> f32
    "func.return"(%11, %12) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()