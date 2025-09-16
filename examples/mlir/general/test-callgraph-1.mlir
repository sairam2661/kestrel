"builtin.module"() ({
  "builtin.module"() <{sym_name = "nested_module"}> ({
    "func.func"() <{function_type = () -> (), sym_name = "func_a"}> ({
      "func.return"() : () -> ()
    }) : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "func_b"}> ({
    "test.conversion_call_op"() <{callee = @nested_module::@func_a}> : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) {test.name = "nested"} : () -> ()

