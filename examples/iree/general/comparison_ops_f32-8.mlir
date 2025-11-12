"builtin.module"() ({
  "vm.module"() <{sym_name = "module"}> ({
    "vm.func"() <{function_type = (f32) -> i32}> ({
    ^bb0(%arg0: f32):
      %0 = "vm.cmp.nan.f32"(%arg0) : (f32) -> i32
      "vm.return"() : () -> ()
    }) {sym_name = "cmp_nan_f32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

