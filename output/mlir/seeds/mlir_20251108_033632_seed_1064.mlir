"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %arg2) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %2 = "arith.subi"(%1, %arg0) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %3 = "arith.divsi"(%2, %arg1) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()