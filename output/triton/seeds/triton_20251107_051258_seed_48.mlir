"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_scratch_ptr, !ttg_scratch_ptr) -> !ttg_scratch_ptr, sym_name = "scratch_alloc_combine"}> ({
    ^bb0(%arg0: !ttg_scratch_ptr, %arg1: !ttg_scratch_ptr):
      %2 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> !ttg_scratch_ptr
      %3 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> !ttg_scratch_ptr
      %4 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> !ttg_scratch_ptr
      %5 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> !ttg_scratch_ptr
      %6 = "arith.addi"(%arg0, %arg1) : (!ttg_scratch_ptr, !ttg_scratch_ptr) -> !ttg_scratch_ptr
      %7 = "arith.addi"(%6, %2) : (!ttg_scratch_ptr, !ttg_scratch_ptr) -> !ttg_scratch_ptr
      %8 = "arith.addi"(%7, %3) : (!ttg_scratch_ptr, !ttg_scratch_ptr) -> !ttg_scratch_ptr
      %9 = "arith.addi"(%8, %4) : (!ttg_scratch_ptr, !ttg_scratch_ptr) -> !ttg_scratch_ptr
      "tt.return"(%9) : (!ttg_scratch_ptr) -> ()
  }) : () -> ()
}) : () -> ()