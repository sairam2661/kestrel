"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}], function_type = (!ttg_ptr_type) -> (), sym_name = "stress_test", sym_visibility = "public"}> ({
  ^bb0(%arg0: !ttg_ptr_type):
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttg_ptr_type
    %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32}> : () -> !ttg_ptr_type
    %2 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> !ttg_ptr_type
    %3 = "ttg.global_scratch_alloc"() <{size = 8192 : i32}> : () -> !ttg_ptr_type
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()