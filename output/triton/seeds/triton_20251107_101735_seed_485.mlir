"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_chain", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.subi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %arg1, "slt") <{}> : (i32, i32) -> i1
    %3 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %4 = "arith.addi"(%1, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.select"(%2, %4, %arg1) <{}> : (i1, i32, i32) -> i32
    %6 = "arith.muli"(%5, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "tt.return"(%6) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 2 : i32, "ttg.threads-per-warp" = 16 : i32} : () -> ()