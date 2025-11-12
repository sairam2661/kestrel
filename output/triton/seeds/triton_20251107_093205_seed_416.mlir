"builtin.module"() ({
  "tt.func"() <{function_type = () -> (!ttgPtr, !ttgPtr), sym_name = "complex_alloc"}> ({
    %0 = "ttg.global_scratch_alloc"() <{alignment = 16 : i32, nbytes = 256 : i32}> : () -> !ttgPtr
    %1 = "ttg.global_scratch_alloc"() <{alignment = 32 : i32, nbytes = 512 : i32}> : () -> !ttgPtr
    %2 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %4 = "tt.addptr"(%0, %2) : (!ttgPtr, i32) -> !ttgPtr
    %5 = "tt.addptr"(%1, %3) : (!ttgPtr, i32) -> !ttgPtr
    "tt.return"(%4, %5) : (!ttgPtr, !ttgPtr) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()