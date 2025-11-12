"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32, i32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %4 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.muli"(%4, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.remsi"(%5, %2) : (i32, i32) -> i32
    %7 = "arith.divsi"(%6, %3) : (i32, i32) -> i32
    %8 = "arith.select"(%7, %4, %5) : (i1, i32, i32) -> i32
    %9 = "arith.addi"(%8, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %10 = "arith.muli"(%9, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "arith.remsi"(%10, %3) : (i32, i32) -> i32
    %12 = "arith.divsi"(%11, %1) : (i32, i32) -> i32
    %13 = "arith.select"(%12, %9, %10) : (i1, i32, i32) -> i32
    "tt.return"(%12, %13) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()