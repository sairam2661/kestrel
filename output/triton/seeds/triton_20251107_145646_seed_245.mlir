"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %2 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %3 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    %4 = "arith.cmpi"(%arg0, %arg1, "eq") : (i32, i32) -> i1
    %5 = "arith.select"(%4, %1, %2) : (i1, i32, i32) -> i32
    %6 = "arith.muli"(%5, %3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %7 = "arith.divsi"(%6, %0) <{signedness = #arith_signed}> : (i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()