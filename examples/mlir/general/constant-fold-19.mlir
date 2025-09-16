"builtin.module"() ({
  "func.func"() <{function_type = () -> (i32, i32, i32), sym_name = "simple_divi_signed"}> ({
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.divsi"(%1, %2) : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = -2 : i32}> : () -> i32
    %5 = "arith.divsi"(%1, %4) : (i32, i32) -> i32
    %6 = "arith.divsi"(%1, %0) : (i32, i32) -> i32
    "func.return"(%3, %5, %6) : (i32, i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

