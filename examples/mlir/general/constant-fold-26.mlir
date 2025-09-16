"builtin.module"() ({
  "func.func"() <{function_type = () -> (i32, i32, i32, i32, i32), sym_name = "simple_arith.ceildivui"}> ({
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.ceildivui"(%1, %2) : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = -2 : i32}> : () -> i32
    %5 = "arith.ceildivui"(%1, %4) : (i32, i32) -> i32
    %6 = "arith.constant"() <{value = -8 : i32}> : () -> i32
    %7 = "arith.ceildivui"(%6, %2) : (i32, i32) -> i32
    %8 = "arith.constant"() <{value = -15 : i32}> : () -> i32
    %9 = "arith.ceildivui"(%8, %4) : (i32, i32) -> i32
    %10 = "arith.ceildivui"(%1, %0) : (i32, i32) -> i32
    "func.return"(%3, %5, %7, %9, %10) : (i32, i32, i32, i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

