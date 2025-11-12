"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complexOpChain"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "comb.truth_table"(%arg0, %arg1) <{lookupTable = 15 : ui4}> : (i32, i32) -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.muli"(%2, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.subi"(%3, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "comb.truth_table"(%4, %arg0) <{lookupTable = 7 : ui4}> : (i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "nestedOpChain"}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %1 = "comb.truth_table"(%arg2, %arg3) <{lookupTable = 14 : ui4}> : (i32, i32) -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.muli"(%2, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.subi"(%3, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "comb.truth_table"(%4, %arg2) <{lookupTable = 8 : ui4}> : (i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()