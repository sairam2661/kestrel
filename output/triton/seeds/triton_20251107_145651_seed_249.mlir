"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %0, "sgt") : (i32, i32) -> i1
    %3 = "arith.select"(%2, %1, %0) : (i1, i32, i32) -> i32
    %4 = "arith.subi"(%3, %arg0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %5 = "arith.muli"(%4, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %6 = "arith.divsi"(%5, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %7 = "arith.remsi"(%6, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %8 = "arith.xori"(%7, %arg0) : (i32, i32) -> i32
    "tt.return"(%8) : (i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "nested_conditionals"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0, "slt") : (i32, i32) -> i1
    %2:2 = "scf.if"(%1) ({
      %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%3, %arg1) : (i32, i32) -> ()
    }, {
      %4 = "arith.subi"(%arg1, %arg0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%arg0, %4) : (i32, i32) -> ()
    }) : (i1) -> (i32, i32)
    "tt.return"(%2#0, %2#1) : (i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()