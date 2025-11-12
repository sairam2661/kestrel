"builtin.module"() ({
  "tt.func"() <{function_type = () -> (!ttgScratch), sym_name = "scratch_alloc_test"}> ({
    ^bb0:
      %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32, alignment = 16 : i32}> : () -> !ttgScratch
      %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32, alignment = 32 : i32}> : () -> !ttgScratch
      %2 = "ttg.global_scratch_alloc"() <{size = 512 : i32, alignment = 8 : i32}> : () -> !ttgScratch
      %3 = "ttg.global_scratch_alloc"() <{size = 4096 : i32, alignment = 64 : i32}> : () -> !ttgScratch
      "tt.return"(%0, %1, %2, %3) : (!ttgScratch, !ttgScratch, !ttgScratch, !ttgScratch) -> ()
  }) : () -> (!ttgScratch, !ttgScratch, !ttgScratch, !ttgScratch)
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> (!ttgScratch, !ttgScratch, !ttgScratch, !ttgScratch)