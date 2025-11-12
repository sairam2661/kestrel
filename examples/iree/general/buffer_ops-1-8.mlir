"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (!vm.buffer) -> ()}> ({
    ^bb0(%arg0: !vm.buffer):
      %0 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %1 = "vm.const.i64"() <{value = 10 : i64}> : () -> i64
      %2 = "vm.buffer.hash"(%arg0, %0, %1) : (!vm.buffer, i64, i64) -> i64
      "vm.return"() : () -> ()
    }) {sym_name = "buffer_hash"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

