"builtin.module"() ({
  "func.func"() <{function_type = (i8) -> (i8, i8, i8, i8), sym_name = "test_maxui"}> ({
  ^bb0(%arg1: i8):
    %7 = "arith.constant"() <{value = -1 : i8}> : () -> i8
    %8 = "arith.constant"() <{value = 0 : i8}> : () -> i8
    %9 = "arith.constant"() <{value = 42 : i8}> : () -> i8
    %10 = "arith.maxui"(%arg1, %arg1) : (i8, i8) -> i8
    %11 = "arith.maxui"(%arg1, %7) : (i8, i8) -> i8
    %12 = "arith.maxui"(%arg1, %8) : (i8, i8) -> i8
    %13 = "arith.maxui"(%arg1, %9) : (i8, i8) -> i8
    "func.return"(%10, %11, %12, %13) : (i8, i8, i8, i8) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i8) -> (i8, i8, i8, i8), sym_name = "test_maxui2"}> ({
  ^bb0(%arg0: i8):
    %0 = "arith.constant"() <{value = -1 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = 0 : i8}> : () -> i8
    %2 = "arith.constant"() <{value = 42 : i8}> : () -> i8
    %3 = "arith.maxui"(%arg0, %arg0) : (i8, i8) -> i8
    %4 = "arith.maxui"(%0, %arg0) : (i8, i8) -> i8
    %5 = "arith.maxui"(%1, %arg0) : (i8, i8) -> i8
    %6 = "arith.maxui"(%2, %arg0) : (i8, i8) -> i8
    "func.return"(%3, %4, %5, %6) : (i8, i8, i8, i8) -> ()
  }) : () -> ()
}) : () -> ()

