"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_alloc", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "ttg.global_scratch_alloc"() <{alignment = 16 : i32, nbytes = 256 : i32}> : () -> !ttgPtr
    %1 = "ttg.global_scratch_alloc"() <{alignment = 8 : i32, nbytes = 512 : i32}> : () -> !ttgPtr
    %2 = "ttg.global_scratch_alloc"() <{alignment = 4 : i32, nbytes = 1024 : i32}> : () -> !ttgPtr
    %3 = "ttg.global_scratch_alloc"() <{alignment = 2 : i32, nbytes = 2048 : i32}> : () -> !ttgPtr
    %4 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    "tt.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()