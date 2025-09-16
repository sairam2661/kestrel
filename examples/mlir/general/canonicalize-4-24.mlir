"builtin.module"() ({
  "func.func"() <{function_type = (i8) -> (i8, i8, i8, i8), sym_name = "test_minui"}> ({
  ^bb0(%arg1: i8):
    %7 = "arith.constant"() <{value = -1 : i8}> : () -> i8
    %8 = "arith.constant"() <{value = 0 : i8}> : () -> i8
    %9 = "arith.constant"() <{value = 42 : i8}> : () -> i8
    %10 = "arith.minui"(%arg1, %arg1) : (i8, i8) -> i8
    %11 = "arith.minui"(%arg1, %7) : (i8, i8) -> i8
    %12 = "arith.minui"(%arg1, %8) : (i8, i8) -> i8
    %13 = "arith.minui"(%arg1, %9) : (i8, i8) -> i8
    "func.return"(%10, %11, %12, %13) : (i8, i8, i8, i8) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i8) -> (i8, i8, i8, i8), sym_name = "test_minui2"}> ({
  ^bb0(%arg0: i8):
    %0 = "arith.constant"() <{value = -1 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = 0 : i8}> : () -> i8
    %2 = "arith.constant"() <{value = 42 : i8}> : () -> i8
    %3 = "arith.minui"(%arg0, %arg0) : (i8, i8) -> i8
    %4 = "arith.minui"(%0, %arg0) : (i8, i8) -> i8
    %5 = "arith.minui"(%1, %arg0) : (i8, i8) -> i8
    %6 = "arith.minui"(%2, %arg0) : (i8, i8) -> i8
    "func.return"(%3, %4, %5, %6) : (i8, i8, i8, i8) -> ()
  }) : () -> ()
}) : () -> ()

