"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = () -> f32}> ({
      %0 = "vm.const.f32.zero"() : () -> f32
      "vm.return"(%0) : (f32) -> ()
    }) {sym_name = "const_f32_zero"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

