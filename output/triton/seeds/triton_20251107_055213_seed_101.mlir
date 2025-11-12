"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowed}>: (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflowed}>: (i32, i32) -> i32
    %3 = "arith.divsi"(%2, %0) <{roundingMode = #arith_floor}>: (i32, i32) -> i32
    %4 = "arith.xori"(%3, %1) : (i32, i32) -> i32
    %5 = "arith.subi"(%4, %2) : (i32, i32) -> i32
    "tt.return"(%5) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()