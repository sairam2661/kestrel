"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %2 = "arith.subi"(%arg1, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %arg0, "slt") : (i32, i32) -> i1
    %5 = "arith.select"(%4, %3, %arg1) : (i1, i32, i32) -> i32
    "tt.return"(%5) : (i32) -> ()
  }) : (i32, i32) -> i32
}) : () -> ()