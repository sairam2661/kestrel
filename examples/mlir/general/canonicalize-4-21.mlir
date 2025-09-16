"builtin.module"() ({
  "func.func"() <{function_type = (i8) -> (i8, i8, i8, i8), sym_name = "test_maxsi"}> ({
  ^bb0(%arg1: i8):
    %7 = "arith.constant"() <{value = 127 : i8}> : () -> i8
    %8 = "arith.constant"() <{value = -128 : i8}> : () -> i8
    %9 = "arith.constant"() <{value = 42 : i8}> : () -> i8
    %10 = "arith.maxsi"(%arg1, %arg1) : (i8, i8) -> i8
    %11 = "arith.maxsi"(%arg1, %7) : (i8, i8) -> i8
    %12 = "arith.maxsi"(%arg1, %8) : (i8, i8) -> i8
    %13 = "arith.maxsi"(%arg1, %9) : (i8, i8) -> i8
    "func.return"(%10, %11, %12, %13) : (i8, i8, i8, i8) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i8) -> (i8, i8, i8, i8), sym_name = "test_maxsi2"}> ({
  ^bb0(%arg0: i8):
    %0 = "arith.constant"() <{value = 127 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = -128 : i8}> : () -> i8
    %2 = "arith.constant"() <{value = 42 : i8}> : () -> i8
    %3 = "arith.maxsi"(%arg0, %arg0) : (i8, i8) -> i8
    %4 = "arith.maxsi"(%0, %arg0) : (i8, i8) -> i8
    %5 = "arith.maxsi"(%1, %arg0) : (i8, i8) -> i8
    %6 = "arith.maxsi"(%2, %arg0) : (i8, i8) -> i8
    "func.return"(%3, %4, %5, %6) : (i8, i8, i8, i8) -> ()
  }) : () -> ()
}) : () -> ()

