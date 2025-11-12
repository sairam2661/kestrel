"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_ignore}> : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %arg0) <{overflowFlags = #arith_overflow_ignore}> : (i32, i32) -> i32
    %2 = "arith.divsi"(%1, %arg1) <{overflowFlags = #arith_overflow_ignore}> : (i32, i32) -> i32
    %3 = "arith.remsi"(%1, %arg1) <{overflowFlags = #arith_overflow_ignore}> : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %0, "slt") : (i32, i32) -> i1
    %5 = "arith.select"(%4, %2, %3) : (i1, i32, i32) -> i32
    "tt.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()