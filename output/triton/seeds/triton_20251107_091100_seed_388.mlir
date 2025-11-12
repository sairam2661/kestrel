"builtin.module"() ({
  "tt.func"() <{function_type = () -> (!ttgmemref_info), sym_name = "get_memref_info", sym_visibility = "private"}> ({
    %0 = "ttg.global_scratch_alloc"() <{alignment = 256 : i32, nbytes = 2048 : i32}> : () -> !ttgmemref_info
    "tt.return"(%0) : (!ttgmemref_info) -> ()
  }) : () -> ()

  "tt.func"() <{function_type = (!ttgmemref_info) -> (!ttgmemref_info), sym_name = "process_memref", sym_visibility = "private"}> ({
    %0 = "ttg.global_scratch_alloc"() <{alignment = 512 : i32, nbytes = 4096 : i32}> : () -> !ttgmemref_info
    %1 = "tt.call"() <{callee = @get_memref_info}> : () -> !ttgmemref_info
    "tt.return"(%1) : (!ttgmemref_info) -> ()
  }) : () -> (!ttgmemref_info)

  "tt.func"() <{function_type = (!ttgmemref_info) -> (!ttgmemref_info), sym_name = "main_function", sym_visibility = "public"}> ({
    %0 = "ttg.global_scratch_alloc"() <{alignment = 1024 : i32, nbytes = 8192 : i32}> : () -> !ttgmemref_info
    %1 = "tt.call"() <{callee = @process_memref}> : (!ttgmemref_info) -> !ttgmemref_info
    "tt.return"(%1) : (!ttgmemref_info) -> ()
  }) : () -> (!ttgmemref_info)
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()