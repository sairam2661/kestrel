"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32) -> ()}> ({
    ^bb0(%arg0: i32):
      "vm.fail"(%arg0) <{message = "message"}> : (i32) -> ()
    }) {sym_name = "fail"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

