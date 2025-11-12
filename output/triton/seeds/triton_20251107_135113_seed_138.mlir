"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_reduce", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "tt.make_range"(%arg0, %arg1, %0) : (i32, i32, i32) -> !ttg_range
    %3:2 = "tt.reduce"(%2) <{identity = #ttg_reduce_ident_opselector}>({
    ^bb0(%arg2: i32, %arg3: i32):
      %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (i32) -> (i32, i32)
    "tt.return"(%3#0, %3#1) : (i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()