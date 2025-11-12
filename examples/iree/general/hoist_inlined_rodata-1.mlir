"builtin.module"() ({
  "vm.module"() <{sym_name = "module"}> ({
    "vm.initializer"() <{function_type = () -> ()}> ({
      %0 = "vm.rodata.inline"() <{value = dense<[1, 2, 3]> : tensor<3xi32>}> : () -> !vm.buffer
      "vm.return"() : () -> ()
    }) : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

