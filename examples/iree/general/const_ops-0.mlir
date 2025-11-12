"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = () -> i32}> ({
      %0 = "vm.const.i32.zero"() : () -> i32
      "vm.return"(%0) : (i32) -> ()
    }) {sym_name = "const_i32_zero"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

