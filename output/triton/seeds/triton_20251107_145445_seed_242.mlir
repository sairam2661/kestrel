"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "unary_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.xori"(%arg0, %0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %2 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %3 = "arith.divsi"(%2, %0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    "tt.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()