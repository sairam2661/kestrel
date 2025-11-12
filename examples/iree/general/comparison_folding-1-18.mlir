"builtin.module"() ({
  "vm.module"() <{sym_name = "cast_f32_si32_folds"}> ({
    "vm.func"() <{function_type = () -> i32}> ({
      %4 = "vm.const.f32"() <{value = -2.000000e+00 : f32}> : () -> f32
      %5 = "vm.cast.f32.si32"(%4) : (f32) -> i32
      "vm.return"(%5) : (i32) -> ()
    }) {sym_name = "cast_exact"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %2 = "vm.const.f32"() <{value = -2.500000e+00 : f32}> : () -> f32
      %3 = "vm.cast.f32.si32"(%2) : (f32) -> i32
      "vm.return"(%3) : (i32) -> ()
    }) {sym_name = "cast_round_neg"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %0 = "vm.const.f32"() <{value = 2.500000e+00 : f32}> : () -> f32
      %1 = "vm.cast.f32.si32"(%0) : (f32) -> i32
      "vm.return"(%1) : (i32) -> ()
    }) {sym_name = "cast_round_pos"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

