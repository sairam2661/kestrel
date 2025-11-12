"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64) -> i64, sym_name = "complex_add_tree"}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i64, i64) -> i64
    %1 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflow_flags}> : (i64, i64) -> i64
    %2 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i64, i64) -> i64
    %3 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_flags}> : (i64, i64) -> i64
    %4 = "arith.addi"(%3, %2) <{overflowFlags = #arith_overflow_flags}> : (i64, i64) -> i64
    "func.return"(%4) : (i64) -> ()
  }) : () -> ()
}) : () -> ()