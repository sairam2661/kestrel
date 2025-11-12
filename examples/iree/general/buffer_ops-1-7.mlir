"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (!vm.buffer) -> ()}> ({
    ^bb0(%arg2: !vm.buffer):
      %4 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %5 = "vm.const.i32"() <{value = 102 : i32}> : () -> i32
      "vm.buffer.store.i8"(%arg2, %4, %5) : (!vm.buffer, i64, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "buffer_store_i8"} : () -> ()
    "vm.func"() <{function_type = (!vm.buffer) -> ()}> ({
    ^bb0(%arg1: !vm.buffer):
      %2 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %3 = "vm.const.i32"() <{value = 102 : i32}> : () -> i32
      "vm.buffer.store.i16"(%arg1, %2, %3) : (!vm.buffer, i64, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "buffer_store_i16"} : () -> ()
    "vm.func"() <{function_type = (!vm.buffer) -> ()}> ({
    ^bb0(%arg0: !vm.buffer):
      %0 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %1 = "vm.const.i32"() <{value = 102 : i32}> : () -> i32
      "vm.buffer.store.i32"(%arg0, %0, %1) : (!vm.buffer, i64, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "buffer_store_i32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

