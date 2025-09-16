"builtin.module"() ({
  "func.func"() <{function_type = () -> (i8, i16, i32), sym_name = "simple_arith.ceildivsi_overflow"}> ({
    %0 = "arith.constant"() <{value = 7 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = -128 : i8}> : () -> i8
    %2 = "arith.ceildivsi"(%1, %0) : (i8, i8) -> i8
    %3 = "arith.constant"() <{value = 7 : i16}> : () -> i16
    %4 = "arith.constant"() <{value = -32768 : i16}> : () -> i16
    %5 = "arith.ceildivsi"(%4, %3) : (i16, i16) -> i16
    %6 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %7 = "arith.constant"() <{value = -2147483648 : i32}> : () -> i32
    %8 = "arith.ceildivsi"(%7, %6) : (i32, i32) -> i32
    "func.return"(%2, %5, %8) : (i8, i16, i32) -> ()
  }) : () -> ()
}) : () -> ()

