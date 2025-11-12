"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.rodata"() <{alignment = 8 : i64, sym_name = "buf0", sym_visibility = "private", value = dense<[0, 1, 2]> : tensor<3xi8>}> : () -> ()
    "vm.func"() <{function_type = () -> !vm.buffer}> ({
      %0 = "vm.const.ref.rodata"() <{rodata = @buf0}> : () -> !vm.buffer
      "vm.return"(%0) : (!vm.buffer) -> ()
    }) {sym_name = "const_ref_rodata"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

