"builtin.module"() ({
  "vm.module"() <{sym_name = "simple_module"}> ({
    "vm.export"() <{export_name = "func", function_ref = @func}> : () -> ()
    "vm.func"() <{function_type = (f32) -> f32}> ({
    ^bb0(%arg0: f32):
      %0 = "vm.add.f32"(%arg0, %arg0) : (f32, f32) -> f32
      "vm.return"(%0) : (f32) -> ()
    }) {sym_name = "func"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

