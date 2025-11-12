"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32) -> (i32, i32)}> ({
    ^bb0(%arg0: i32):
      %0 = "vm.cast.si32.f32"(%arg0) : (i32) -> f32
      %1 = "vm.cast.ui32.f32"(%arg0) : (i32) -> f32
      %2 = "vm.cast.f32.si32"(%0) : (f32) -> i32
      %3 = "vm.cast.f32.ui32"(%1) : (f32) -> i32
      "vm.return"(%2, %3) : (i32, i32) -> ()
    }) {sym_name = "cast"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

