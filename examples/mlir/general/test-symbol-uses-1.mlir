"builtin.module"() ({
  "builtin.module"() <{sym_name = "module_b"}> ({
    "builtin.module"() <{sym_name = "module_c"}> ({
      "func.func"() <{function_type = () -> (), sym_name = "foo", sym_visibility = "nested"}> ({
      }) : () -> ()
    }) : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "symbol_bar"}> ({
    "foo.op"() {use_1 = [{nested_symbol = [@module_b::@module_c::@foo]}], use_2 = @module_b} : () -> ()
  }) : () -> ()
}) : () -> ()

