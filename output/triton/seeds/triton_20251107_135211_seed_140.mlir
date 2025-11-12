"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "mixed_ops", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32

    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %1 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %2 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32

    %3 = "arith.remsi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32

    %4 = "arith.select"(%3, %0, %1) : (i32, i32, i32) -> i32
    %5 = "arith.select"(%2, %1, %0) : (i32, i32, i32) -> i32

    %6 = "tt.make_range"() <{start = 0 : i32, end = 10 : i32, step = 1 : i32}> : () -> !ttgMakeRange

    %7:4 = "scf.for"(%c0_i32, %c0_i32, %c10_i32, %c1_i32) ({
    ^bb0(%indvar: i32, %acc0: i32, %acc1: i32, %acc2: i32):
      %8 = "arith.addi"(%acc0, %indvar) : (i32, i32) -> i32
      %9 = "arith.addi"(%acc1, %indvar) : (i32, i32) -> i32
      %10 = "arith.addi"(%acc2, %indvar) : (i32, i32) -> i32
      "scf.yield"(%8, %9, %10, %indvar) : (i32, i32, i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32) -> (i32, i32, i32, i32)

    "tt.return"(%4, %7#2) : (i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()