"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %0 = "vm.abs.i32"(%arg0) : (i32) -> i32
      "vm.return"(%0) : (i32) -> ()
    }) {sym_name = "abs_i32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

