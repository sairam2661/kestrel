"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32, tt.pointer_range = 64 : i32}], function_type = (!ttg_ptr, i32) -> (!ttg_ptr), sym_name = "scratch_alloc_test", sym_visibility = "public"}> ({
    ^bb0(%arg0: !ttg_ptr, %arg1: i32):
      %0 = "ttg.global_scratch_alloc"(%arg0, %arg1) <{alignment = 32 : i32, size = 1024 : i32}> : (!ttg_ptr, i32) -> !ttg_ptr
      %1 = "ttg.global_scratch_alloc"(%0, %arg1) <{alignment = 16 : i32, size = 512 : i32}> : (!ttg_ptr, i32) -> !ttg_ptr
      %2 = "ttg.global_scratch_alloc"(%1, %arg1) <{alignment = 8 : i32, size = 256 : i32}> : (!ttg_ptr, i32) -> !ttg_ptr
      %3 = "ttg.global_scratch_alloc"(%2, %arg1) <{alignment = 4 : i32, size = 128 : i32}> : (!ttg_ptr, i32) -> !ttg_ptr
      "tt.return"(%3) : (!ttg_ptr) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 4 : i32, "ttg.num-warps" = 2 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> (!ttg_ptr)