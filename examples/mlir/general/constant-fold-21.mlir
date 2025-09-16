"builtin.module"() ({
  "func.func"() <{function_type = () -> (i32, i32, i32), sym_name = "simple_divi_unsigned"}> ({
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.divui"(%1, %2) : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = -2 : i32}> : () -> i32
    %5 = "arith.divui"(%1, %4) : (i32, i32) -> i32
    %6 = "arith.divui"(%1, %0) : (i32, i32) -> i32
    "func.return"(%3, %5, %6) : (i32, i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

