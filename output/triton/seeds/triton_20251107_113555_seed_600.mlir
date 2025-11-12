"builtin.module"() ({
  "tt.func"() <{function_type = () -> tensor<64xi32>, sym_name = "complex_scratch_alloc"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttgPtr
    %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32}> : () -> !ttgPtr
    %2 = "ttg.global_scratch_alloc"() <{size = 512 : i32}> : () -> !ttgPtr
    %3 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> !ttgPtr
    %4 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflow_flag_attr}> : (i32, i32) -> i32
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()