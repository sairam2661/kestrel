"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64, f32), sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_NONE}> : (i32, i32) -> i32
    %3 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflow_NONE}> : (i32, i32) -> i32
    %4 = "arith.select"(%arg0, %3, %2) <{predicate = #arith_cmpi_EQ}> : (i32, i32, i32) -> i32
    %5 = "arith.cmpi"(%arg0, %0, "slt") : (i32, i32) -> i1
    %6 = "arith.select"(%5, %3, %2) <{predicate = #arith_cmpi_EQ}> : (i1, i32, i32) -> i32
    %7 = "arith.addf"(%1, %1) : (f32, f32) -> f32
    %8 = "arith.mulf"(%7, %7) : (f32, f32) -> f32
    "func.return"(%4, %arg1, %8) : (i32, i64, f32) -> ()
  }) : () -> ()
}) : () -> ()