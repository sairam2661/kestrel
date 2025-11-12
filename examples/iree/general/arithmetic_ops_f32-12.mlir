"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (f32) -> f32}> ({
    ^bb0(%arg0: f32):
      %0 = "vm.atan.f32"(%arg0) : (f32) -> f32
      "vm.return"(%0) : (f32) -> ()
    }) {sym_name = "atan_f32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

