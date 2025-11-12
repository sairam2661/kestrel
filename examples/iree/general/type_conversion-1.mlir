"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.rodata"() <{sym_name = "byte_buffer", sym_visibility = "private", value = dense<[1, 2, 3]> : tensor<3xi32>}> : () -> ()
    "vm.export"() <{export_name = "ref", function_ref = @ref}> : () -> ()
    "vm.func"() <{function_type = (i32) -> ()}> ({
    ^bb0(%arg0: i32):
      %0 = "vm.const.ref.rodata"() <{rodata = @byte_buffer}> : () -> !vm.buffer
      %1 = "util.optimization_barrier"(%0) : (!vm.buffer) -> !vm.buffer
      "vm.return"() : () -> ()
    }) {sym_name = "ref"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

