"builtin.module"() ({
  "tt.func"() <{function_type = (index, !tt.ptr<i8>) -> (), sym_name = "test_empty_kernel"}> ({
  ^bb0(%arg0: index, %arg1: !tt.ptr<i8>):
    %0 = "proton_gpu.global_scratch_alloc"() <{alignment = 128 : i32, nbytes = 384 : i32}> : () -> !tt.ptr<i8>
    %1 = "proton_gpu.global_scratch_alloc"() <{alignment = 128 : i32, nbytes = 384 : i32}> : () -> !tt.ptr<i8>
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()

