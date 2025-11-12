"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_allocs", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "ttg.global_scratch_alloc"() <{alignment = 16 : i32, nbytes = 512 : i32}> : () -> !ttg ptr
    .results %1 : i32, i32
    %2 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "scf.for"() <{lb = 0 : i32, ub = 10 : i32, step = 1 : i32}> {
      scf.yield
    } : () -> ()
    %4 = "arith.muli"(%2, %3) : (i32, i32) -> i32
    "tt.return"(%4) : (i32) -> ()
  }) : (i32, i32) -> (i32)
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 64 : i32} : () -> ()