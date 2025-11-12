"builtin.module"() ({
  "vm.module"() <{sym_name = "cmp_eq_f32_near_folds"}> ({
    "vm.func"() <{function_type = (f32, f32) -> i32}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      %6 = "vm.cmp.eq.f32.near"(%arg0, %arg1) : (f32, f32) -> i32
      "vm.return"(%6) : (i32) -> ()
    }) {sym_name = "eq_near_f32"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %3 = "vm.const.f32"() <{value = 1.99999988 : f32}> : () -> f32
      %4 = "vm.const.f32"() <{value = 2.000000e+00 : f32}> : () -> f32
      %5 = "vm.cmp.eq.f32.near"(%3, %4) : (f32, f32) -> i32
      "vm.return"(%5) : (i32) -> ()
    }) {sym_name = "const_eq_near_f32"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %0 = "vm.const.f32"() <{value = -2.000000e+00 : f32}> : () -> f32
      %1 = "vm.const.f32"() <{value = 2.000000e+00 : f32}> : () -> f32
      %2 = "vm.cmp.eq.f32.near"(%0, %1) : (f32, f32) -> i32
      "vm.return"(%2) : (i32) -> ()
    }) {sym_name = "const_flipped_signs_eq_near_f32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

