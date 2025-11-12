"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %0 = "vm.trunc.i32.i8"(%arg0) : (i32) -> i32
      %1 = "vm.trunc.i32.i16"(%0) : (i32) -> i32
      %2 = "vm.trunc.i16.i8"(%1) : (i32) -> i32
      "vm.return"(%2) : (i32) -> ()
    }) {sym_name = "trunc"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

