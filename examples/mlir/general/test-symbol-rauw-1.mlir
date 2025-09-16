"builtin.module"() ({
  "builtin.module"() <{sym_name = "module_a"}> ({
    "func.func"() <{function_type = () -> (), sym_name = "foo", sym_visibility = "nested"}> ({
    }) {sym.new_name = "replaced_foo"} : () -> ()
  }) : () -> ()
  "builtin.module"() <{sym_name = "module_b"}> ({
    "builtin.module"() <{sym_name = "module_c"}> ({
      "func.func"() <{function_type = () -> (), sym_name = "foo", sym_visibility = "nested"}> ({
      }) {sym.new_name = "replaced_foo"} : () -> ()
    }) {sym.new_name = "replaced_module_c"} : () -> ()
  }) {sym.new_name = "replaced_module_b"} : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "symbol_bar"}> ({
    "foo.op"() {use_1 = @module_a::@foo, use_2 = @module_b::@module_c::@foo} : () -> ()
  }) : () -> ()
}) : () -> ()

