"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr, !ttg_ptr) -> (), sym_name = "complex_allocations"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32, alignment = 16 : i32}> : () -> !ttg_ptr
    %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32, alignment = 32 : i32}> : () -> !ttg_ptr
    %2 = "ttg.global_scratch_alloc"() <{size = 4096 : i32, alignment = 64 : i32}> : () -> !ttg_ptr
    %3 = "ttg.global_scratch_alloc"() <{size = 8192 : i32, alignment = 128 : i32}> : () -> !ttg_ptr
    "tt.return"(%0, %1, %2, %3) : (!ttg_ptr, !ttg_ptr, !ttg_ptr, !ttg_ptr) -> ()
  }) : (!ttg_ptr, !ttg_ptr) -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 16 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()