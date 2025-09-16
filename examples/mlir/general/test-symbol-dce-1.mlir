"builtin.module"() ({
  "builtin.module"() <{sym_name = "public_module"}> ({
    "func.func"() <{function_type = () -> (), sym_name = "dead_nested_function", sym_visibility = "nested"}> ({
    }) : () -> ()
    "func.func"() <{function_type = () -> (), sym_name = "private_function", sym_visibility = "private"}> ({
    }) : () -> ()
    "func.func"() <{function_type = () -> (), sym_name = "nested_function", sym_visibility = "nested"}> ({
      "foo.return"() {uses = [@private_function]} : () -> ()
    }) : () -> ()
  }) : () -> ()
  "live.user"() {uses = [@public_module::@nested_function]} : () -> ()
}) {test.nested} : () -> ()

