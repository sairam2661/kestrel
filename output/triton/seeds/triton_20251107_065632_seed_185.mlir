"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr, index) -> (), sym_name = "complex_scratch_alloc"}> ({
  ^bb0(%arg0: !ttg_ptr, %arg1: index):
    %0 = "arith.constant"() <{value = 256 : i32}> : () -> i32
    %1 = "proton_gpu.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 1024 : i32}> : () -> !ttg_ptr
    %2 = "arith.cmpi"(%arg1, %0, "slt") : (index, i32) -> i1
    "scf.if"(%2) ({
      ^bb1(%arg2: i1):
        "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 512 : i32}> : () -> !ttg_ptr
        "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 768 : i32}> : () -> !ttg_ptr
        "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 1024 : i32}> : () -> !ttg_ptr
        "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 1280 : i32}> : () -> !ttg_ptr
        "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()