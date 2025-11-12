"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (f32, i64), sym_name = "stress_test"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 456 : i64}> : () -> i64
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.cmpi"(%arg1, %1) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %4 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %5 = "scf.if"(%3) ({
      %6 = "arith.addf"(%4, %4) <{overflowFlags = #arith_overflownone}> : (f32, f32) -> f32
      "scf.yield"(%6, %arg1) : (f32, i64) -> ()
    }, {
      %7 = "arith.mulf"(%4, %4) <{overflowFlags = #arith_overflownone}> : (f32, f32) -> f32
      "scf.yield"(%7, %1) : (f32, i64) -> ()
    }) : (i1) -> (f32, i64)
    "func.return"(%5#0, %5#1) : (f32, i64) -> ()
  }) : () -> ()
}) : () -> ()