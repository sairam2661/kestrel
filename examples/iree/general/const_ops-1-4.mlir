"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = () -> !vm.buffer}> ({
      %0 = "vm.rodata.inline"() <{value = dense<[0, 1, 2]> : tensor<3xi8>}> : () -> !vm.buffer
      "vm.return"(%0) : (!vm.buffer) -> ()
    }) {sym_name = "inlined_rodata"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

