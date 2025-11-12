"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (!vm.buffer, !vm.buffer) -> ()}> ({
    ^bb0(%arg0: !vm.buffer, %arg1: !vm.buffer):
      %0 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %1 = "vm.const.i64"() <{value = 16 : i64}> : () -> i64
      %2 = "vm.buffer.compare"(%arg0, %0, %arg1, %1, %1) : (!vm.buffer, i64, !vm.buffer, i64, i64) -> i32
      "vm.return"() : () -> ()
    }) {sym_name = "buffer_compare"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

