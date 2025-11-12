"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_global_scratch_alloc, !ttg_global_scratch_alloc) -> !ttg_global_scratch_alloc, sym_name = "complex_alloc"}> ({
  ^bb0(%arg0: !ttg_global_scratch_alloc, %arg1: !ttg_global_scratch_alloc):
    %0 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 512 : i32}> : () -> !ttg_global_scratch_alloc
    %1 = "arith.cmpi"(%arg0, %arg1, "slt") : (!ttg_global_scratch_alloc, !ttg_global_scratch_alloc) -> i1
    %2 = "arith.select"(%1, %0, %arg0) : (i1, !ttg_global_scratch_alloc, !ttg_global_scratch_alloc) -> !ttg_global_scratch_alloc
    "tt.return"(%2) : (!ttg_global_scratch_alloc) -> !ttg_global_scratch_alloc
  }) : () -> ()
}) : () -> ()