"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_computation"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %arg0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %arg1, "slt") : (i32, i32) -> i1
    %5 = "arith.select"(%4, %3, %arg1) : (i1, i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()