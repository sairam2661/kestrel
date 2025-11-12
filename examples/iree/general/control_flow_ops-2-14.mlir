"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32, i32) -> (i32, i32)}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      "vm.return"(%arg0, %arg1) : (i32, i32) -> ()
    }) {sym_name = "return_args"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

