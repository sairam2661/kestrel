"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %arg1) <{predicate = 10 : i64}> : (i32, i32) -> i1
    %4 = "arith.select"(%3, %2, %1) : (i1, i32, i32) -> i32
    %5 = "arith.divsi"(%4, %0) <{resultType = i32}> : (i32, i32) -> i32
    %6 = "arith.subi"(%5, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "tt.return"(%6) : (i32) -> ()
  }) : () -> (i32)
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32} : () -> (i32)