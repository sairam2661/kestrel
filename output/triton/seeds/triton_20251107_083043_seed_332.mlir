"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr, !ttg_ptr) -> (), sym_name = "scratch_alloc_test"}> ({
  ^bb0(%arg0: !ttg_ptr, %arg1: !ttg_ptr):
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttg_ptr
    %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32}> : () -> !ttg_ptr
    %2 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> !ttg_ptr
    %3 = "ttg.global_scratch_alloc"() <{size = 8192 : i32}> : () -> !ttg_ptr
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()