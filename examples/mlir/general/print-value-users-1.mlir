"builtin.module"() ({
  %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
  %1 = "test.outerop"(%0) ({
    "test.innerop"(%0) : (i32) -> ()
  }) : (i32) -> i32
  %2:3 = "test.custom_result_name"(%1) <{names = ["p", "p", "q"]}> : (i32) -> (i32, i32, i32)
  %3:2 = "test.custom_result_name"(%2#2, %2#2, %1) <{names = ["r", "s"]}> : (i32, i32, i32) -> (i32, i32)
  %4:2 = "test.custom_result_name"(%3#1, %2#2, %2#0) <{names = ["u", "v"]}> : (i32, i32, i32) -> (i32, i32)
}) : () -> ()

