"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr) -> (!ttg_ptr), sym_name = "global_alloc_test"}> ({
    ^bb0(%arg0: !ttg_ptr):
      %0 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 512 : i32}> : () -> !ttg_ptr
      %1 = "ttg.global_scratch_alloc"() <{alignment = 128 : i32, nbytes = 1024 : i32}> : () -> !ttg_ptr
      %2 = "ttg.global_scratch_alloc"() <{alignment = 32 : i32, nbytes = 256 : i32}> : () -> !ttg_ptr
      %3 = "ttg.global_scratch_alloc"() <{alignment = 16 : i32, nbytes = 128 : i32}> : () -> !ttg_ptr
      "tt.return"(%0, %1, %2, %3) : (!ttg_ptr, !ttg_ptr, !ttg_ptr, !ttg_ptr) -> ()
  }) : () -> (!ttg_ptr, !ttg_ptr, !ttg_ptr, !ttg_ptr)
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> (!ttg_ptr, !ttg_ptr, !ttg_ptr, !ttg_ptr)