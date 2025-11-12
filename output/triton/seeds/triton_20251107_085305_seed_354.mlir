"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_sequence", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %2 = "scf.if"(%1) ({
      %3 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }, {
      %4 = "arith.divsi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (i1) -> i32
    %5 = "arith.select"(%1, %0, %2) : (i1, i32, i32) -> i32
    %6 = "arith.addi"(%5, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.xori"(%6, %5) : (i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32} : () -> ()