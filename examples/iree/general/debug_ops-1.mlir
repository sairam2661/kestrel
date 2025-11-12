"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32, i32) -> ()}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      "vm.print"(%arg0, %arg1) <{message = "message"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "print_args"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

