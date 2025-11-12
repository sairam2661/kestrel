"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (!vm.buffer) -> ()}> ({
    ^bb0(%arg0: !vm.buffer):
      %0 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %1 = "vm.const.i64"() <{value = 16 : i64}> : () -> i64
      %2 = "vm.const.f32"() <{value = 1.020000e+02 : f32}> : () -> f32
      "vm.buffer.fill.f32"(%arg0, %0, %1, %2) : (!vm.buffer, i64, i64, f32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "buffer_fill_f32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

