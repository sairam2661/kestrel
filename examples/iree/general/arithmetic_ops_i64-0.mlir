"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i64, i64) -> ()}> ({
    ^bb0(%arg0: i64, %arg1: i64):
      %0 = "vm.add.i64"(%arg0, %arg1) : (i64, i64) -> i64
      "vm.return"(%0) : (i64) -> ()
    }) {sym_name = "add_i64"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

