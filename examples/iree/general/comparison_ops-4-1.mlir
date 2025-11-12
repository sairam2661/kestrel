"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (f32, f32) -> i32}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      %0 = "vm.cmp.eq.f32.near"(%arg0, %arg1) : (f32, f32) -> i32
      "vm.return"(%0) : (i32) -> ()
    }) {sym_name = "cmp_eq_f32_near"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

