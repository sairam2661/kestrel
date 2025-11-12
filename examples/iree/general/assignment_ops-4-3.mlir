"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32) -> !vm.buffer}> ({
    ^bb0(%arg0: i32):
      %0 = "make_buffer"() : () -> !vm.buffer
      %1 = "make_buffer"() : () -> !vm.buffer
      %2 = "make_buffer"() : () -> !vm.buffer
      %3 = "make_buffer"() : () -> !vm.buffer
      %4 = "vm.switch.ref"(%arg0, %3, %0, %1, %2) : (i32, !vm.buffer, !vm.buffer, !vm.buffer, !vm.buffer) -> !vm.buffer
      "vm.return"(%4) : (!vm.buffer) -> ()
    }) {sym_name = "switch_ref"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

