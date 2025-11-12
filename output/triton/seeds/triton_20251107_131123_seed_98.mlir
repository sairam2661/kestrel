"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_chain", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.xori"(%2, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %arg1, "eq") <{predicate = "eq"}> : (i32, i32) -> i1
    %5 = "scf.if"(%4) ({
      %6 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }, {
      "scf.yield"(%arg1) : (i32) -> ()
    }) : (i1) -> i32
    %7 = "scf.for"(%0, %arg1, %5, %arg0) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %8 = "arith.addi"(%arg3, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%8) : (i32) -> ()
    }) : (i32, i32, i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()