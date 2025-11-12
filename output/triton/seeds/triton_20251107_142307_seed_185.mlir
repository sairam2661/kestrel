"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32, i32), sym_name = "unusual_combinations", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %4 = "arith.select"(%3, %2, %0) : (i1, i32, i32) -> i32
    %5 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %6 = "scf.if"(%3) ({
    ^bb0:
      %7 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }, {
    ^bb1:
      %8 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%8) : (i32) -> ()
    }) : (i1) -> i32
    "tt.return"(%4, %5, %6) : (i32, i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()