"builtin.module"() ({
  "vm.module"() <{sym_name = "init_empty"}> ({
    "vm.export"() <{export_name = "__init", function_ref = @__init}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      "vm.return"() : () -> ()
    }) {sym_name = "__init", sym_visibility = "private"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

