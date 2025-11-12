"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (f32) -> i32}> ({
    ^bb0(%arg0: f32):
      %0 = "vm.cast.f32.si32"(%arg0) : (f32) -> i32
      "vm.return"(%0) : (i32) -> ()
    }) {sym_name = "cast_f32_si32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

