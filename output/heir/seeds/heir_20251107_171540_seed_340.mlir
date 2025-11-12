"builtin.module"() ({
  "func.func"() <{function_type = (i8, i8, i8) -> i8, sym_name = "fuzz_test"}> ({
  ^bb0(%arg0: i8, %arg1: i8, %arg2: i8):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %1 = "arith.addi"(%0, %arg2) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %2 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %3 = "arith.addi"(%2, %arg2) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %4 = "comb.truth_table"(%1, %3) <{inputs = [0, 1, 1, 0], outputs = [0, 1, 1, 0]}> : (i8, i8) -> i1
    %5 = "scf.if"(%4) ({
      %6 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
      "scf.yield"(%6) : (i8) -> ()
    }, {
      "scf.yield"(%3) : (i8) -> ()
    }) : (i1) -> i8
    "func.return"(%5) : (i8) -> ()
  }) : () -> ()
}) : () -> ()