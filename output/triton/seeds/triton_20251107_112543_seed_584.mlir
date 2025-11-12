"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr, !ttg_ptr) -> (!ttg_ptr, !ttg_ptr), sym_name = "test"}> ({
    %0 = "ttg.global_scratch_alloc"() <{alignment = 32 : i32, nbytes = 256 : i32}> : () -> !ttg_ptr
    %1 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 512 : i32}> : () -> !ttg_ptr
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "scf.for"(%2, 0, 10, %0, %1) ({
    ^bb0(%i: i32, %ptr0: !ttg_ptr, %ptr1: !ttg_ptr):
      %4 = "arith.muli"(%i, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %5 = "tt.addptr"(%ptr0, %4) : (!ttg_ptr, i32) -> !ttg_ptr
      %6 = "tt.addptr"(%ptr1, %4) : (!ttg_ptr, i32) -> !ttg_ptr
      "scf.yield"(%ptr0, %ptr1) : (!ttg_ptr, !ttg_ptr) -> ()
    }) : (i32, !ttg_ptr, !ttg_ptr) -> (!ttg_ptr, !ttg_ptr)
    "tt.return"(%0, %1) : (!ttg_ptr, !ttg_ptr) -> ()
  }) : () -> ()
}) : () -> ()