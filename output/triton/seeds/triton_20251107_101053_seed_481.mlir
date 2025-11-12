"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_alloc_example", sym_visibility = "public"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.muli"(%0, %0) : (i32, i32) -> i32
      %2 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 1024 : i32}> : () -> !ttg_ptr_i8
      %3 = "ttg.global_scratch_alloc"() <{alignment = 32 : i32, nbytes = 512 : i32}> : () -> !ttg_ptr_i8
      %4 = "scf.if"(%0) ({
        ^bb1:
          %5 = "arith.addi"(%1, %2) : (i32, !ttg_ptr_i8) -> !ttg_ptr_i8
          "scf.yield"(%5) : (!ttg_ptr_i8)
      }) {
        "scf.yield"=#0} : (i32) -> (!ttg_ptr_i8)
      "tt.return"(%4) : (!ttg_ptr_i8) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 2 : i32, "ttg.threads-per-warp" = 16 : i32} : () -> ()