"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgHandle, !ttgHandle, !ttgHandle) -> (!ttgHandle, !ttgHandle, !ttgHandle), sym_name = "multi_alloc"}> ({
  ^bb0(%arg0: !ttgHandle, %arg1: !ttgHandle, %arg2: !ttgHandle):
    %0 = "ttg.global_scratch_alloc"() <{alignment = 16 : i32, nbytes = 256 : i32}> : () -> !ttgHandle
    %1 = "ttg.global_scratch_alloc"() <{alignment = 32 : i32, nbytes = 512 : i32}> : () -> !ttgHandle
    %2 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 1024 : i32}> : () -> !ttgHandle
    "tt.return"(%0, %1, %2) : (!ttgHandle, !ttgHandle, !ttgHandle) -> ()
  }) : () -> ()
}) : () -> ()