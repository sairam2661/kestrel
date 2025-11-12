"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.import"() <{function_type = () -> (), sym_name = "ref_fn", sym_visibility = "private"}> ({
    }) : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      "vm.call"() <{callee = @ref_fn}> : () -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "import_ref"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

