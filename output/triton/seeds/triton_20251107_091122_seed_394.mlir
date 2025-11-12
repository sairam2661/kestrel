"builtin.module"() ({
  "tt.func"() <{function_type = () -> (!ttgCOO, !ttgCOO), sym_name = "complex_alloc", sym_visibility = "public"}> ({
    %0 = "ttg.global_scratch_alloc"() <{alignment = 256 : i32, nbytes = 512 : i32}> : () -> !ttgCOO
    %1 = "ttg.global_scratch_alloc"() <{alignment = 128 : i32, nbytes = 256 : i32}> : () -> !ttgCOO
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %4:2 = "scf.for"(%2, %3, %3) ({
    ^bb0(%arg0: i32, %arg1: i32):
      %5 = "arith.addi"(%arg0, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%5, %arg1) : (i32, i32) -> ()
    }) : (i32, i32) -> (i32, i32)
    %6 = "ttg.global_scratch_alloc"() <{alignment = 16 : i32, nbytes = 64 : i32}> : () -> !ttgCOO
    "tt.return"(%0, %1) : (!ttgCOO, !ttgCOO) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()