"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (!vm.buffer) -> ()}> ({
    ^bb0(%arg0: !vm.buffer):
      %0 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %1 = "vm.const.i64"() <{value = 32 : i64}> : () -> i64
      %2 = "vm.const.i32"() <{value = 64 : i32}> : () -> i32
      %3 = "vm.buffer.clone"(%arg0, %0, %1, %2) : (!vm.buffer, i64, i64, i32) -> !vm.buffer
      "vm.return"() : () -> ()
    }) {sym_name = "buffer_clone"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

