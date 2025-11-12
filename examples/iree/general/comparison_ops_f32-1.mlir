"builtin.module"() ({
  "vm.module"() <{sym_name = "module"}> ({
    "vm.func"() <{function_type = (f32, f32) -> i32}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      %0 = "vm.cmp.eq.f32.u"(%arg0, %arg1) : (f32, f32) -> i32
      "vm.return"() : () -> ()
    }) {sym_name = "cmp_eq_f32u"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

