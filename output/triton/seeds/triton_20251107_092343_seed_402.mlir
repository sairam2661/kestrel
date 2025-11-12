"builtin.module"() ({
  "tt.func"() <{function_type = (i32, !ttg_ptr) -> i32, sym_name = "stress_test"}> ({
    ^bb0(%arg0: i32, %arg1: !ttg_ptr):
      %1 = "arith.constant"() <{value = 1024 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 2048 : i32}> : () -> i32
      %3 = "arith.subi"(%arg0, %1) <{overflowFlags = #arith_overflow_mode}>: (i32, i32) -> i32
      %4 = "scf.if"(%3) ({
        %5 = "tt.addptr"(%arg1, %3) <{alignment = 16 : i32}> : (!ttg_ptr, i32) -> !ttg_ptr
        "tt.return"(%3) : (i32) -> ()
      }, {
        %6 = "tt.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 4096 : i32}> : () -> !ttg_ptr
        %7 = "arith.addi"(%6, %2) <{overflowFlags = #arith_overflow_mode}> : (!ttg_ptr, i32) -> !ttg_ptr
        "tt.return"(%2) : (i32) -> ()
      }) : (i32) -> ()
    }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()