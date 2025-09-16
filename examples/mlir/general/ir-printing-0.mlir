"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "foo"}> ({
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "bar"}> ({
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

