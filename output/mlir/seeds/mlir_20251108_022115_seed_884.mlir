"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_add"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %3 = "arith.addi"(%2, %0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %4 = "arith.addi"(%3, %1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    "func.return"(%4, %3) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()