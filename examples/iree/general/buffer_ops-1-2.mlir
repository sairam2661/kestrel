"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (!vm.buffer) -> ()}> ({
    ^bb0(%arg0: !vm.buffer):
      %0 = "vm.buffer.length"(%arg0) : (!vm.buffer) -> i64
      "vm.return"() : () -> ()
    }) {sym_name = "buffer_length"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

