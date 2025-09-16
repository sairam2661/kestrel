"builtin.module"() ({
  "builtin.module"() <{sym_name = "public_module"}> ({
    "func.func"() <{function_type = () -> (), sym_name = "nested_function", sym_visibility = "nested"}> ({
    }) : () -> ()
  }) : () -> ()
  "builtin.module"() <{sym_name = "nested_module", sym_visibility = "nested"}> ({
    "func.func"() <{function_type = () -> (), sym_name = "nested_function", sym_visibility = "nested"}> ({
    }) : () -> ()
  }) : () -> ()
  "builtin.module"() <{sym_name = "private_module", sym_visibility = "private"}> ({
    "func.func"() <{function_type = () -> (), sym_name = "nested_function", sym_visibility = "nested"}> ({
    }) : () -> ()
  }) : () -> ()
  "live.user"() {uses = [@nested_module, @private_module]} : () -> ()
}) {test.no_dce_non_hidden_parent} : () -> ()

