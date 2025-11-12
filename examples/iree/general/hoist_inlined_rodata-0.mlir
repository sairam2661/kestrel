"builtin.module"() ({
  "vm.module"() <{sym_name = "module"}> ({
    "vm.func"() <{function_type = () -> ()}> ({
      "vm.return"() : () -> ()
    }) {sym_name = "name"} : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.rodata.inline"() <{alignment = 64 : i64, mime_type = "text/plain", name = "name", value = dense<[1, 2, 3]> : tensor<3xi32>}> : () -> !vm.buffer
      "vm.return"() : () -> ()
    }) {sym_name = "fn"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

