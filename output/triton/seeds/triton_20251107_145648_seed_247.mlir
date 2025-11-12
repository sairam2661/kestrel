"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "unusual_sequence", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %1, "slt") <{result_bit_width = 1}> : (i32, i32) -> i1
    %4 = "arith.select"(%3, %arg1, %arg0) : (i1, i32, i32) -> i32
    %5 = "arith.subi"(%4, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.xori"(%5, %arg0) : (i32, i32) -> i32
    %7 = "arith.muli"(%6, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "arith.divsi"(%7, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "tt.return"(%8) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()