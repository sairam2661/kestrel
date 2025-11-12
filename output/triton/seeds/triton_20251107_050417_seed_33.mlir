"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgPtr) -> (!ttgPtr), sym_name = "scratch_alloc_test"}> ({
  ^bb0(%arg0: !ttgPtr):
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32, alignment = 32 : i32}> : () -> !ttgPtr
    %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32, alignment = 64 : i32}> : () -> !ttgPtr
    %2 = "ttg.global_scratch_alloc"() <{size = 4096 : i32, alignment = 128 : i32}> : () -> !ttgPtr
    %3 = "ttg.global_scratch_alloc"() <{size = 8192 : i32, alignment = 256 : i32}> : () -> !ttgPtr
    %4 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_modes} > : (!ttgPtr, !ttgPtr) -> !ttgPtr
    %5 = "arith.addi"(%4, %1) <{overflowFlags = #arith_overflow_modes} > : (!ttgPtr, !ttgPtr) -> !ttgPtr
    %6 = "arith.addi"(%5, %2) <{overflowFlags = #arith_overflow_modes} > : (!ttgPtr, !ttgPtr) -> !ttgPtr
    %7 = "arith.addi"(%6, %3) <{overflowFlags = #arith_overflow_modes} > : (!ttgPtr, !ttgPtr) -> !ttgPtr
    "tt.return"(%7) : (!ttgPtr) -> ()
  }) : (!ttgPtr) -> (!ttgPtr)
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 2 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()