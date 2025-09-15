"builtin.module"() ({
  "tt.func"() <{function_type = () -> (!tt.ptr<i8>, !tt.ptr<i8>), sym_name = "test_alloc", sym_visibility = "public"}> ({
    %0 = "ttg.global_scratch_alloc"() <{alignment = 8 : i32, nbytes = 100 : i32}> : () -> !tt.ptr<i8>
    %1 = "ttg.global_scratch_alloc"() <{alignment = 128 : i32, nbytes = 128 : i32}> : () -> !tt.ptr<i8>
    "tt.return"(%0, %1) : (!tt.ptr<i8>, !tt.ptr<i8>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()

