"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i64, sym_name = "mixed_add_and_cast"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %2 = "arith.index_cast"(%0) : (i32) -> i64
    %3 = "arith.addi"(%2, %1) <{overflowFlags = #arith_overflow_mode}> : (i64, i64) -> i64
    "func.return"(%3) : (i64) -> ()
  }) : () -> ()
}) : () -> ()