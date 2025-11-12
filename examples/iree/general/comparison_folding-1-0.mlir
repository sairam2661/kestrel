"builtin.module"() ({
  "vm.module"() <{sym_name = "cmp_eq_i32_folds"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %9 = "vm.cmp.eq.i32"(%arg0, %arg0) : (i32, i32) -> i32
      "vm.return"(%9) : (i32) -> ()
    }) {sym_name = "always_eq"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %6 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %7 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %8 = "vm.cmp.eq.i32"(%6, %7) : (i32, i32) -> i32
      "vm.return"(%8) : (i32) -> ()
    }) {sym_name = "const_eq"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %3 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %4 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %5 = "vm.cmp.eq.i32"(%3, %4) : (i32, i32) -> i32
      "vm.return"(%5) : (i32) -> ()
    }) {sym_name = "const_ne"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %0 = "vm.const.f32"() <{value = 1.000000e+00 : f32}> : () -> f32
      %1 = "vm.const.f32"() <{value = 2.000000e+00 : f32}> : () -> f32
      %2 = "vm.cmp.eq.f32.o"(%0, %1) : (f32, f32) -> i32
      "vm.return"(%2) : (i32) -> ()
    }) {sym_name = "const_ne_f32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

