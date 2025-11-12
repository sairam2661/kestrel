"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "scratch_test"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32, alignment = 32 : i32}> : () -> !ttgcratch
    %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32, alignment = 64 : i32}> : () -> !ttgscratch
    %2 = "ttg.global_scratch_alloc"() <{size = 4096 : i32, alignment = 128 : i32}> : () -> !ttgscratch
    %3 = "ttg.global_scratch_alloc"() <{size = 8192 : i32, alignment = 256 : i32}> : () -> !ttgscratch

    "scf.for"() <{lower_bound = 0 : i32, upper_bound = 1024 : i32, step = 1 : i32}> ({
      ^bb0(%i: i32):
        "tt.store"(%i, %0, %i) : (i32, !ttgscratch, i32) -> ()
        "tt.store"(%i, %1, %i) : (i32, !ttgscratch, i32) -> ()
        "tt.store"(%i, %2, %i) : (i32, !ttgscratch, i32) -> ()
        "tt.store"(%i, %3, %i) : (i32, !ttgscratch, i32) -> ()
        "scf.yield"() : () -> ()
    }) : () -> ()

    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()