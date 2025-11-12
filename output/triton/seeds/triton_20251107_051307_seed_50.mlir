"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "scratch_alloc_test"}> ({
    ^bb0:
      %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32, alignment = 32 : i32}> : () -> !ttgPtr
      %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32, alignment = 64 : i32}> : () -> !ttgPtr
      %2 = "ttg.global_scratch_alloc"() <{size = 3072 : i32, alignment = 128 : i32}> : () -> !ttgPtr
      %3 = "ttg.global_scratch_alloc"() <{size = 4096 : i32, alignment = 256 : i32}> : () -> !ttgPtr
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()