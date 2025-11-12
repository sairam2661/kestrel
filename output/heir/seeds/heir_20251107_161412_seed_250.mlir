"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_and"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i1}> : () -> i1
    %1 = "arith.constant"() <{value = 2 : i1}> : () -> i1
    %2 = "arith.constant"() <{value = 3 : i1}> : () -> i1
    %3 = "arith.constant"() <{value = 4 : i1}> : () -> i1
    %4 = "comb.truth_table"(%0, %1, %2, %3) <{values = [0, 1, 1, 0]}> : (i1, i1, i1, i1) -> i1
    %5 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %7 = "arith.select"(%4, %5, %6) : (i1, i32, i32) -> i32
    %8 = "arith.addi"(%arg0, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "arith.muli"(%arg1, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%9) : (i32) -> ()
  }) : () -> ()
}) : () -> ()