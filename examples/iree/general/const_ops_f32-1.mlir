"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.f32"() <{value = 5.000000e-01 : f32}> : () -> f32
      %1 = "vm.const.f32"() <{value = 2.500000e+00 : f32}> : () -> f32
      %2 = "vm.const.f32"() <{value = -2.500000e+00 : f32}> : () -> f32
      "vm.return"() : () -> ()
    }) {sym_name = "const_f32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

