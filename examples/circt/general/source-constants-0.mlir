"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "foo"}> ({
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

