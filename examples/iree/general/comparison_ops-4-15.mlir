"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32) -> f32}> ({
    ^bb0(%arg0: i32):
      %0 = "vm.cast.si32.f32"(%arg0) : (i32) -> f32
      "vm.return"(%0) : (f32) -> ()
    }) {sym_name = "cast_si32_f32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

