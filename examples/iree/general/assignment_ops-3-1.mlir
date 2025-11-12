"builtin.module"() ({
  "func.func"() <{function_type = (index) -> i32, sym_name = "switch_i32"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 200 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 300 : i32}> : () -> i32
    %3 = "util.switch"(%arg0, %2, %0, %1) : (index, i32, i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

