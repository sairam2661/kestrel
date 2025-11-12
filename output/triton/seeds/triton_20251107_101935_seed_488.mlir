"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgglobal_scratch_alloc) -> (!ttgglobal_scratch_alloc), sym_name = "scratch_alloc_test"}> ({
    ^bb0(%arg0: !ttgglobal_scratch_alloc):
      %1 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttgglobal_scratch_alloc
      %2 = "ttg.global_scratch_alloc"() <{size = 2048 : i32}> : () -> !ttgglobal_scratch_alloc
      %3 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> !ttgglobal_scratch_alloc
      %4 = "ttg.global_scratch_alloc"() <{size = 8192 : i32}> : () -> !ttgglobal_scratch_alloc
      "tt.return"(%4) : (!ttgglobal_scratch_alloc) -> ()
  }) : () -> (!ttgglobal_scratch_alloc)
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()