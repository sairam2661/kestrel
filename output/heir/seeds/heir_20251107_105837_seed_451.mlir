"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.mulf"(%arg0, %arg1) <{overflowFlags = #arith_overflow_disable}> : (i32, i32) -> i32
    %1 = "arith.subi"(%0, %arg2) <{overflowFlags = #arith_overflow_disable}> : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %arg0, "slt") : (i32, i32) -> i1
    %3 = "arith.select"(%2, %0, %1) : (i1, i32, i32) -> i32
    %4 = "arith.addi"(%3, %1) <{overflowFlags = #arith_overflow_disable}> : (i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()