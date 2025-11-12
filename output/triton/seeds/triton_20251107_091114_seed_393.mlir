"builtin.module"() ({
  "tt.func"() <{function_type = () -> (!ttg_ptr_i8, !ttg_ptr_i8), sym_name = "test_allocs", sym_visibility = "public"}> ({
    %0 = "ttg.global_scratch_alloc"() <{alignment = 256 : i32, nbytes = 512 : i32}> : () -> !ttg_ptr_i8
    %1 = "ttg.global_scratch_alloc"() <{alignment = 128 : i32, nbytes = 256 : i32}> : () -> !ttg_ptr_i8
    %2 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 128 : i32}> : () -> !ttg_ptr_i8
    %3 = "ttg.global_scratch_alloc"() <{alignment = 32 : i32, nbytes = 64 : i32}> : () -> !ttg_ptr_i8
    "tt.return"(%0, %1) : (!ttg_ptr_i8, !ttg_ptr_i8) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "cuda:80", "ttg.threads-per-warp" = 32 : i32} : () -> ()