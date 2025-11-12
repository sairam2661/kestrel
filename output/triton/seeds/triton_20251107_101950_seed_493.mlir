"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr, !ttg_ptr) -> (!ttg_ptr), sym_name = "scratch_alloc_test", sym_visibility = "private"}> ({
    ^bb0(%arg0: !ttg_ptr, %arg1: !ttg_ptr):
      %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttg_ptr
      %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 3.14 : f64}> : () -> f64
      %3 = "ttng.async_tma_load"(%0, %1) <{bytes = 8 : i32}> : (!ttg_ptr, i32) -> f64
      %4 = "arith.addf"(%2, %3) : (f64, f64) -> f64
      %5 = "ttg.global_scratch_alloc"() <{size = 2048 : i32}> : () -> !ttg_ptr
      %6 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %7 = "ttng.async_tma_store"(%arg1, %6, %4) <{bytes = 8 : i32}> : (!ttg_ptr, i32, f64) -> ()
      "tt.return"(%5) : (!ttg_ptr) -> ()
  }) : (!ttg_ptr, !ttg_ptr) -> (!ttg_ptr)
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()