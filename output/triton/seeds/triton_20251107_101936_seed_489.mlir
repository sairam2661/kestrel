"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgcratch_alloc, !ttgcratch_alloc, !ttgscratch_alloc, !ttgcratch_alloc) -> (), sym_name = "scratch_alloc_test"}> ({
    ^bb0(%arg0: !ttgscratch_alloc, %arg1: !ttgscratch_alloc, %arg2: !ttgscratch_alloc, %arg3: !ttgscratch_alloc):
      %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttgscratch_alloc
      %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32}> : () -> !ttgscratch_alloc
      %2 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> !ttgscratch_alloc
      %3 = "ttg.global_scratch_alloc"() <{size = 8192 : i32}> : () -> !ttgscratch_alloc
      "tt.return"(%0, %1, %2, %3) : (!ttgscratch_alloc, !ttgscratch_alloc, !ttgscratch_alloc, !ttgscratch_alloc) -> ()
  }) : (!ttgscratch_alloc, !ttgscratch_alloc, !ttgscratch_alloc, !ttgscratch_alloc) -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32} : () -> ()