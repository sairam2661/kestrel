"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr) -> (), sym_name = "scratch_alloc_test"}> ({
  ^bb0:
    %0 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 1024 : i32}> : () -> !ttg_ptr
    %1 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 1024 : i32}> : () -> !ttg_ptr
    %2 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 1024 : i32}> : () -> !ttg_ptr
    %3 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 1024 : i32}> : () -> !ttg_ptr
    %4 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %6 = "arith.addi"(%4, %5) : (i32, i32) -> i32
    %7 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %8 = "arith.muli"(%6, %7) : (i32, i32) -> i32
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()