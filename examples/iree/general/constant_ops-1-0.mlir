"builtin.module"() ({
  "vm.module"() <{sym_name = "rodata_ops"}> ({
    "vm.rodata"() <{sym_name = "buffer_1", sym_visibility = "public", value = dense<[1, 2, 3]> : tensor<3xi8>}> : () -> ()
    "vm.rodata"() <{sym_name = "buffer_2", sym_visibility = "public", value = dense<[1, 2, 3]> : tensor<3xi32>}> : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

