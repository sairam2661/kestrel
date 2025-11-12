"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr, !ttg_ptr) -> (), sym_name = "complex_kernel"}> ({
  ^bb0(%arg0: !ttg_ptr, %arg1: !ttg_ptr):
    %0 = "ttg.global_scratch_alloc"() <{alignment = 256 : i32, nbytes = 1024 : i32}> : () -> !ttg_ptr
    %1 = "ttg.global_scratch_alloc"() <{alignment = 256 : i32, nbytes = 1024 : i32}> : () -> !ttg_ptr
    %2 = "ttg.global_scratch_alloc"() <{alignment = 256 : i32, nbytes = 1024 : i32}> : () -> !ttg_ptr
    %3 = "ttg.global_scratch_alloc"() <{alignment = 256 : i32, nbytes = 1024 : i32}> : () -> !ttg_ptr
    %4 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 64 : i32}> : () -> i32
    %7 = "arith.constant"() <{value = 128 : i32}> : () -> i32
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 8 : i32, "ttg.num-warps" = 4 : i32} : () -> ()