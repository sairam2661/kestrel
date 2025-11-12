"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (!vm.buffer) -> ()}> ({
    ^bb0(%arg2: !vm.buffer):
      %6 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %7 = "vm.const.i64"() <{value = 16 : i64}> : () -> i64
      %8 = "vm.const.i32"() <{value = 102 : i32}> : () -> i32
      "vm.buffer.fill.i8"(%arg2, %6, %7, %8) : (!vm.buffer, i64, i64, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "buffer_fill_i8"} : () -> ()
    "vm.func"() <{function_type = (!vm.buffer) -> ()}> ({
    ^bb0(%arg1: !vm.buffer):
      %3 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %4 = "vm.const.i64"() <{value = 16 : i64}> : () -> i64
      %5 = "vm.const.i32"() <{value = 102 : i32}> : () -> i32
      "vm.buffer.fill.i16"(%arg1, %3, %4, %5) : (!vm.buffer, i64, i64, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "buffer_fill_i16"} : () -> ()
    "vm.func"() <{function_type = (!vm.buffer) -> ()}> ({
    ^bb0(%arg0: !vm.buffer):
      %0 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %1 = "vm.const.i64"() <{value = 16 : i64}> : () -> i64
      %2 = "vm.const.i32"() <{value = 102 : i32}> : () -> i32
      "vm.buffer.fill.i32"(%arg0, %0, %1, %2) : (!vm.buffer, i64, i64, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "buffer_fill_i32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

