"builtin.module"() ({
  "builtin.module"() <{sym_name = "inner_mod1"}> ({
    "test.symbol"() <{sym_name = "foo"}> : () -> ()
    "func.func"() <{function_type = () -> (), sym_name = "bar", sym_visibility = "private"}> ({
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

