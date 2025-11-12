"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %0 = "vm.bitcast.i32.f32"(%arg0) : (i32) -> f32
      %1 = "vm.bitcast.f32.i32"(%0) : (f32) -> i32
      "vm.return"(%1) : (i32) -> ()
    }) {sym_name = "bitcast"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

