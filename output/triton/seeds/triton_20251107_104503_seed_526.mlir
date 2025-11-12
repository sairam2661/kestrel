"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "scratch_alloc_test"}> ({
    ^bb0:
      %0 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 1024 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 2048 : i32}> : () -> i32
      %3 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4 = "arith.subi"(%3, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %5 = "arith.cmpi"(%4, %0) <{predicate = 1 : i64}> : (i32, i32) -> i1
      "scf.if"(%5) ({
        ^bb1:
          "tt.return"() : () -> ()
      }) : (i1) -> ()
      "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()