"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (), sym_name = "default_value_printing"}> ({
  ^bb0(%arg0: i32):
    "test.default_value_print"(%arg0) <{value_with_default = 0 : i32}> : (i32) -> ()
    "test.default_value_print"(%arg0) <{value_with_default = 1 : i32}> : (i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

