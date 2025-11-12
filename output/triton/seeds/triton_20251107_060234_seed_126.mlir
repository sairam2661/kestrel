"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "fuzz_seq"}> ({
    ^bb0:
      %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttg_SCRATCH
      %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32}> : () -> !ttg_SCRATCH
      %2 = "ttg.global_scratch_alloc"() <{size = 512 : i32}> : () -> !ttg_SCRATCH
      %3 = "ttg.global_scratch_alloc"() <{size = 768 : i32}> : () -> !ttg_SCRATCH
      %4 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %5 = "arith.constant"() <{value = true}> : () -> i1
      %6 = "arith.addi"(%4, %4) : (i32, i32) -> i32
      %7 = "arith.cmpi"(%6, %4) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %8 = "arith.select"(%7, %4, %6) : (i1, i32, i32) -> i32
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()