"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, f32) -> (i32, f32), sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: f32):
    %0 = "arith.constant"() <{value = 256 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 16 : i64}> : () -> i64
    %2 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %3 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.muli"(%arg1, %1) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    %5 = "arith.subi"(%3, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.mulf"(%arg2, %2) : (f32, f32) -> f32
    %7 = "arith.addf"(%6, %arg2) : (f32, f32) -> f32
    %8 = "arith.cmpi"(%arg1, %1) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %9 = "arith.select"(%8, %arg0, %5) : (i1, i32, i32) -> i32
    "func.return"(%9, %7) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()