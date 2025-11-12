"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (!vm.buffer) -> ()}> ({
    ^bb0(%arg4: !vm.buffer):
      %8 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %9 = "vm.buffer.load.i8.s"(%arg4, %8) : (!vm.buffer, i64) -> i32
      "vm.return"() : () -> ()
    }) {sym_name = "buffer_load_i8s"} : () -> ()
    "vm.func"() <{function_type = (!vm.buffer) -> ()}> ({
    ^bb0(%arg3: !vm.buffer):
      %6 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %7 = "vm.buffer.load.i8.u"(%arg3, %6) : (!vm.buffer, i64) -> i32
      "vm.return"() : () -> ()
    }) {sym_name = "buffer_load_i8u"} : () -> ()
    "vm.func"() <{function_type = (!vm.buffer) -> ()}> ({
    ^bb0(%arg2: !vm.buffer):
      %4 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %5 = "vm.buffer.load.i16.s"(%arg2, %4) : (!vm.buffer, i64) -> i32
      "vm.return"() : () -> ()
    }) {sym_name = "buffer_load_i16s"} : () -> ()
    "vm.func"() <{function_type = (!vm.buffer) -> ()}> ({
    ^bb0(%arg1: !vm.buffer):
      %2 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %3 = "vm.buffer.load.i16.u"(%arg1, %2) : (!vm.buffer, i64) -> i32
      "vm.return"() : () -> ()
    }) {sym_name = "buffer_load_i16u"} : () -> ()
    "vm.func"() <{function_type = (!vm.buffer) -> ()}> ({
    ^bb0(%arg0: !vm.buffer):
      %0 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %1 = "vm.buffer.load.i32"(%arg0, %0) : (!vm.buffer, i64) -> i32
      "vm.return"() : () -> ()
    }) {sym_name = "buffer_load_i32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

