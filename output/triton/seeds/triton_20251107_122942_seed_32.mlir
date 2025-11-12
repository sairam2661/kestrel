"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32

    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowModes}> : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %c2_i32) : (i32, i32) -> i32
    %2 = "arith.remsi"(%1, %c3_i32) : (i32, i32) -> i32
    %3 = "arith.divsi"(%2, %c1_i32) : (i32, i32) -> i32

    %4 = "arith.addi"(%arg0, %c1_i32) : (i32, i32) -> i32
    %5 = "arith.muli"(%4, %c2_i32) : (i32, i32) -> i32
    %6 = "arith.remsi"(%5, %c3_i32) : (i32, i32) -> i32
    %7 = "arith.divsi"(%6, %c1_i32) : (i32, i32) -> i32

    %8 = "arith.addi"(%arg1, %c1_i32) : (i32, i32) -> i32
    %9 = "arith.muli"(%8, %c2_i32) : (i32, i32) -> i32
    %10 = "arith.remsi"(%9, %c3_i32) : (i32, i32) -> i32
    %11 = "arith.divsi"(%10, %c1_i32) : (i32, i32) -> i32

    %12 = "arith.select"(%3, %7, %11) : (i32, i32, i32) -> i32

    "tt.return"(%12) : (i32) -> ()
  }) : () -> ()
}) : () -> ()