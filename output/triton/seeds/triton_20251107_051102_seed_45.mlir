"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_global_scratch_alloc0, !ttg_global_scratch_alloc1, i32) -> ()}> ({
    %0 = "ttg.global_scratch_alloc"() <{alignment = 16 : i32, nbytes = 256 : i32}> : () -> !ttg_global_scratch_alloc0
    %1 = "ttg.global_scratch_alloc"() <{alignment = 32 : i32, nbytes = 512 : i32}> : () -> !ttg_global_scratch_alloc1
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "arith.addi"(%2, %2) : (i32, i32) -> i32
    %4 = "arith.cmpi"(%2, %3, "eq") : (i32, i32) -> i1
    %5 = "scf.if"(%4) ({
      "scf.yield"(%3) : (i32) -> ()
    }, {
      "scf.yield"(%2) : (i32) -> ()
    }) : (i1) -> i32
    %6 = "arith.select"(%4, %3, %2) : (i1, i32, i32) -> i32
    %7 = "arith.muli"(%6, %2) : (i32, i32) -> i32
    %8 = "arith.divsi"(%7, %2, "floor") : (i32, i32) -> i32
    %9 = "arith.remsi"(%7, %2) : (i32, i32) -> i32
    "tt.return"(%5, %8, %9) : (i32, i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "cuda:75"} : () -> ()