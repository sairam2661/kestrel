"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "no_alloca"}> ({
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

