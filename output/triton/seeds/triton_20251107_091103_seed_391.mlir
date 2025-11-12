"builtin.module"() ({
  "tt.func"() <{function_type = () -> (!ttg_global_scratch_ptr), sym_name = "scratch_alloc_test", sym_visibility = "public"}> ({
    %0 = "ttg.global_scratch_alloc"() <{alignment = 256 : i32, nbytes = 2048 : i32}> : () -> !ttg_global_scratch_ptr
    %1 = "ttg.global_scratch_alloc"() <{alignment = 128 : i32, nbytes = 1024 : i32}> : () -> !ttg_global_scratch_ptr
    %2 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 512 : i32}> : () -> !ttg_global_scratch_ptr
    %3 = "ttg.global_scratch_alloc"() <{alignment = 32 : i32, nbytes = 256 : i32}> : () -> !ttg_global_scratch_ptr
    "tt.return"(%0) : (!ttg_global_scratch_ptr) -> ()
  }) : () -> (!ttg_global_scratch_ptr)
  "tt.func"() <{function_type = () -> (), sym_name = "nested_loop_example", sym_visibility = "public"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3:5 = "scf.for"(%0, %1, %2, %0, %0, %0, %0) ({
    ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32):
      %4 = "arith.addi"(%arg0, %2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %5:3 = "scf.for"(%0, %1, %2, %0, %0) ({
      ^bb0(%arg5: i32, %arg6: i32, %arg7: i32):
        %6 = "arith.muli"(%arg5, %arg6) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
        "index_phase_use"(%6) : (i32) -> ()
        "scf.yield"(%arg6, %arg7, %6) : (i32, i32, i32) -> ()
      }) : (i32, i32, i32, i32, i32) -> (i32, i32, i32)
      "index_phase_use"(%5#2) : (i32) -> ()
      "scf.yield"(%4, %arg1, %arg2, %arg3, %arg4) : (i32, i32, i32, i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32, i32, i32) -> (i32, i32, i32, i32, i32)
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "complex_control_flow", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2:2 = "scf.if"(%arg0) ({
    ^bb0:
      "scf.yield"(%0) : (i32) -> ()
    }) : (i32) -> (i32)
    %3 = "arith.addi"(%2#0, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    "tt.return"(%3) : (i32) -> ()
  }) : () -> (i32)
}) {"ttg.num_ctas" = 2 : i32, "ttg.num_warps" = 8 : i32, ttg.target = "cuda:90", "ttg.threads_per_warp" = 32 : i32} : () -> ()