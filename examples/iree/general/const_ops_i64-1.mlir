"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %1 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %2 = "vm.const.i64"() <{value = -2 : i64}> : () -> i64
      "vm.return"() : () -> ()
    }) {sym_name = "const_i64"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

