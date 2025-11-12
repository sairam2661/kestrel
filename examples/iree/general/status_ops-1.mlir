"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "status_check_ok_with_message"}> ({
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    "util.status.check_ok"(%0) <{message = "failure message"}> : (i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

