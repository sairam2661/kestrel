"builtin.module"() ({
  "tt.func"() <{function_type = (!ttglobal_scratch_alloc) -> (!ttgglobal_scratch_alloc), sym_name = "nested_allocs"}> ({
  ^bb0():
    %0 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> !ttgglobal_scratch_alloc
    %1 = "ttg.global_scratch_alloc"() <{size = 128 : i32}> : () -> !ttgglobal_scratch_alloc
    %2 = "scf.if"(%0) ({
      %3 = "arith.cmpi"(%1, %0, "eq") : (!ttgglobal_scratch_alloc, !ttgglobal_scratch_alloc) -> i1
      "scf.yield"(%3) : (i1)
    }) : (i1) -> (i1)
    ^bb1(%4: i1):
      "scf.if"(%4) ({
        "tt.addptr"(%1, %2) : (!ttgglobal_scratch_alloc, !ttgglobal_scratch_alloc) -> !ttgglobal_scratch_alloc
        "scf.yield"() : ()
      }) : () -> ()
    ^bb2(%5: i1):
      "scf.yield"() : ()
    "tt.return"(%1) : (!ttgglobal_scratch_alloc) -> ()
  }) : () -> ()
}) : () -> ()