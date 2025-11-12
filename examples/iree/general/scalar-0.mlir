"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "scalar"}> ({
    %0 = "util.unfoldable_constant"() <{value = 42 : i32}> : () -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

