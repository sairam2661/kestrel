"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "dead_private_function", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "dead_nested_function", sym_visibility = "nested"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "live_private_function", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "live_nested_function", sym_visibility = "nested"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "public_function"}> ({
    "foo.return"() {uses = [@live_private_function, @live_nested_function]} : () -> ()
  }) : () -> ()
}) {test.simple} : () -> ()

