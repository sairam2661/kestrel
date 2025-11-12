"builtin.module"() ({
  "func.func"() <{function_type = (i8, i16, i32, i64) -> (i8, i16, i32, i64), sym_name = "mixed_int_widths"}> ({
  ^bb0(%arg0: i8, %arg1: i16, %arg2: i32, %arg3: i64):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i8, i16) -> i16
    %1 = "arith.addi"(%0, %arg2) <{overflowFlags = #arith_overflownone}> : (i16, i32) -> i32
    %2 = "arith.addi"(%1, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i64) -> i64
    "func.return"(%arg0, %arg1, %arg2, %arg3) : (i8, i16, i32, i64) -> ()
  }) : () -> ()
}) : () -> ()