"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.i64"() <{value = 128 : i64}> : () -> i64
      %1 = "vm.const.i32"() <{value = 32 : i32}> : () -> i32
      %2 = "vm.buffer.alloc"(%0, %1) : (i64, i32) -> !vm.buffer
      "vm.return"() : () -> ()
    }) {sym_name = "buffer_alloc"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

