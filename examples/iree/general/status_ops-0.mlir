"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "status_check_ok"}> ({
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    "util.status.check_ok"(%0) : (i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

