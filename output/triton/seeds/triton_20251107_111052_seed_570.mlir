"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_op_combination", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflow_mode_scatter}> : (i32, i32) -> i32
    %3 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode_scatter}> : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %5 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    %6 = "arith.select"(%arg0, %arg1, %4) : (i32, i32, i32) -> i32
    %7 = "scf.if"(%arg0) ({
    ^bb0:
      %8 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
      "scf.yield"(%8) : (i32) -> ()
    }) {
    } : (i32) -> (i32)
    %9 = "scf.for"(%arg0, %arg1, %4, %arg0) ({
    ^bb0(%arg2: index, %arg3: i32):
      %10 = "arith.subi"(%arg3, %1) : (i32, i32) -> i32
      "scf.yield"(%arg3, %10) : (i32, i32) -> ()
    }) : (index, index, index, i32) -> (i32, i32)
    "tt.return"(%9#0, %9#1) : (i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()