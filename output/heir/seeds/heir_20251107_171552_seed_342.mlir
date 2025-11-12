"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i1) -> i32, sym_name = "complex_if_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i1):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %1 = "comb.truth_table"(%0, %arg2) : (i32, i1) -> i1
    %2 = "scf.if"(%1) ({
      %3 = "arith.muli"(%0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %4 = "comb.truth_table"(%3, %arg2) : (i32, i1) -> i1
      %5 = "scf.if"(%4) ({
        %6 = "arith.divi"(%0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> ()
      }, {
        "scf.yield"(%3) : (i32) -> ()
      }) : (i1) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }, {
      "scf.yield"(%0) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()