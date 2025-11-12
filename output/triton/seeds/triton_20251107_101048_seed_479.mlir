"builtin.module"() ({
  "tt.func"() <{function_type = () -> (!ttgHANDLE, !ttgHANDLE), sym_name = "multi_alloc_test", sym_visibility = "public"}> ({
    %0 = "ttg.global_scratch_alloc"() <{alignment = 16 : i32, nbytes = 256 : i32}> : () -> !ttgHANDLE
    %1 = "ttg.global_scratch_alloc"() <{alignment = 32 : i32, nbytes = 512 : i32}> : () -> !ttgHANDLE
    %2 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 1024 : i32}> : () -> !ttgHANDLE
    %3 = "ttg.global_scratch_alloc"() <{alignment = 128 : i32, nbytes = 2048 : i32}> : () -> !ttgHANDLE
    "tt.return"(%0, %1) : (!ttgHANDLE, !ttgHANDLE) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.target" = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()