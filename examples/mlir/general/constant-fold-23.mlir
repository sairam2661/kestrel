"builtin.module"() ({
  "func.func"() <{function_type = () -> (i32, i32, i32, i32, i32), sym_name = "simple_arith.floordivsi"}> ({
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.floordivsi"(%1, %2) : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = -2 : i32}> : () -> i32
    %5 = "arith.floordivsi"(%1, %4) : (i32, i32) -> i32
    %6 = "arith.constant"() <{value = -9 : i32}> : () -> i32
    %7 = "arith.floordivsi"(%6, %2) : (i32, i32) -> i32
    %8 = "arith.constant"() <{value = -13 : i32}> : () -> i32
    %9 = "arith.floordivsi"(%8, %4) : (i32, i32) -> i32
    %10 = "arith.floordivsi"(%1, %0) : (i32, i32) -> i32
    "func.return"(%3, %5, %7, %9, %10) : (i32, i32, i32, i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

