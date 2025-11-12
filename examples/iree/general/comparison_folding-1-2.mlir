"builtin.module"() ({
  "vm.module"() <{sym_name = "cmp_ne_i32_folds"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg4: i32):
      %13 = "vm.cmp.ne.i32"(%arg4, %arg4) : (i32, i32) -> i32
      "vm.return"(%13) : (i32) -> ()
    }) {sym_name = "always_eq"} : () -> ()
    "vm.func"() <{function_type = (i32, i32) -> i32}> ({
    ^bb0(%arg2: i32, %arg3: i32):
      %12 = "vm.cmp.ne.i32"(%arg2, %arg3) : (i32, i32) -> i32
      "vm.return"(%12) : (i32) -> ()
    }) {sym_name = "always_ne"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %9 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %10 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %11 = "vm.cmp.ne.i32"(%9, %10) : (i32, i32) -> i32
      "vm.return"(%11) : (i32) -> ()
    }) {sym_name = "const_ne"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %6 = "vm.const.f32"() <{value = 1.000000e+00 : f32}> : () -> f32
      %7 = "vm.const.f32"() <{value = 2.000000e+00 : f32}> : () -> f32
      %8 = "vm.cmp.ne.f32.o"(%6, %7) : (f32, f32) -> i32
      "vm.return"(%8) : (i32) -> ()
    }) {sym_name = "const_ne_f32"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %3 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %4 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %5 = "vm.cmp.ne.i32"(%3, %4) : (i32, i32) -> i32
      "vm.return"(%5) : (i32) -> ()
    }) {sym_name = "const_eq"} : () -> ()
    "vm.func"() <{function_type = (i32, i32) -> (i32, i32)}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %1 = "vm.cmp.ne.i32"(%arg0, %0) : (i32, i32) -> i32
      %2 = "vm.cmp.ne.i32"(%0, %arg1) : (i32, i32) -> i32
      "vm.return"(%1, %2) : (i32, i32) -> ()
    }) {sym_name = "cmp_const_zero"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

