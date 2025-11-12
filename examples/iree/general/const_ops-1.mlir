"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %1 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %2 = "vm.const.i32"() <{value = -2 : i32}> : () -> i32
      "vm.return"() : () -> ()
    }) {sym_name = "const_i32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

