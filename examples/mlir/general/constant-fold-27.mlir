"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (i32, i32, i32), sym_name = "simple_arith.remsi"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = -2 : i32}> : () -> i32
    %4 = "arith.remsi"(%0, %1) : (i32, i32) -> i32
    %5 = "arith.remsi"(%0, %3) : (i32, i32) -> i32
    %6 = "arith.remsi"(%arg0, %2) : (i32, i32) -> i32
    "func.return"(%4, %5, %6) : (i32, i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

