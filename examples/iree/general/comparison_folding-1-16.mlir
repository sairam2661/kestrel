"builtin.module"() ({
  "vm.module"() <{sym_name = "cast_si32_f32_folds"}> ({
    "vm.func"() <{function_type = () -> f32}> ({
      %0 = "vm.const.i32"() <{value = -2 : i32}> : () -> i32
      %1 = "vm.cast.si32.f32"(%0) : (i32) -> f32
      "vm.return"(%1) : (f32) -> ()
    }) {sym_name = "cast_exact"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

