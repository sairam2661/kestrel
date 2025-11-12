"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32, i32) -> ()}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      "vm.trace"(%arg0, %arg1) <{event_name = "event"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "trace_args"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

