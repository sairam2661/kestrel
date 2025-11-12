"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i64) -> i32}> ({
    ^bb0(%arg0: i64):
      %0 = "vm.trunc.i64.i32"(%arg0) : (i64) -> i32
      "vm.return"(%0) : (i32) -> ()
    }) {sym_name = "trunc_i64"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

