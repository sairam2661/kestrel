"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = () -> i64}> ({
      %0 = "vm.const.i64.zero"() : () -> i64
      "vm.return"(%0) : (i64) -> ()
    }) {sym_name = "const_i64_zero"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

