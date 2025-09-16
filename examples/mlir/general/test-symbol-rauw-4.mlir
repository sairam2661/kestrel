"builtin.module"() ({
  "builtin.module"() <{sym_name = "foo"}> ({
    "func.func"() <{function_type = () -> (), sym_name = "foo", sym_visibility = "private"}> ({
    }) : () -> ()
  }) {sym.new_name = "replaced_foo"} : () -> ()
  "foo.op"() {use = @foo::@foo} : () -> ()
}) : () -> ()

