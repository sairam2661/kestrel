"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_global_scratch_alloc) -> !ttg_global_scratch_alloc, sym_name = "stress_test"}> ({
  ^bb0(%arg0: !ttg_global_scratch_alloc):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %4 = "arith.cmpi"(%2, %3, "slt") : (i32, i32) -> i1
    %5 = "scf.if"(%4) <{"else" = "^bb2", "then" = "^bb1"}> ({
    ^bb1:
      %6 = "arith.constant"() <{value = 4 : i32}> : () -> i32
      %7 = "arith.muli"(%5, %6) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    ^bb2:
      %8 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %9 = "arith.divsi"(%5, %8) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : i32
    %10 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %11 = "arith.remsi"(%10, %11) : (i32, i32) -> i32
    %12 = "arith.xori"(%10, %11) : (i32, i32) -> i32
    %13 = "tt.make_range"(%12, %12, %12) : (i32, i32, i32) -> !tt_range
    "tt.return"(%13) : (!tt_range) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()