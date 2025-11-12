"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg1: i32):
      "vm.return"(%arg1) : (i32) -> ()
    }) {sym_name = "internal_fn"} : () -> ()
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %0 = "vm.call"(%arg0) <{callee = @internal_fn}> : (i32) -> i32
      "vm.return"(%0) : (i32) -> ()
    }) {sym_name = "call_internal_fn"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

