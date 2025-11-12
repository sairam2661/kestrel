"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_mode}>: (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflow_mode}>: (i32, i32) -> i32
    %3 = "arith.subi"(%2, %0) <{overflowFlags = #arith_overflow_mode}>: (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %5 = "arith.select"(%4, %3, %2) : (i1, i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()