"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_global_scratch_alloc_type) -> !ttg_global_scratch_alloc_type, sym_name = "scratch_alloc_test"}> ({
  ^bb0(%arg0: !ttg_global_scratch_alloc_type):
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32, alignment = 16 : i32}> : () -> !ttg_global_scratch_alloc_type
    %1 = "ttg.global_scratch_alloc"() <{size = 512 : i32, alignment = 32 : i32}> : () -> !ttg_global_scratch_alloc_type
    %2 = "ttg.global_scratch_alloc"() <{size = 256 : i32, alignment = 64 : i32}> : () -> !ttg_global_scratch_alloc_type
    %3 = "ttg.global_scratch_alloc"() <{size = 128 : i32, alignment = 128 : i32}> : () -> !ttg_global_scratch_alloc_type
    "tt.return"(%arg0) : (!ttg_global_scratch_alloc_type) -> ()
  }) : () -> ()
}) : () -> ()