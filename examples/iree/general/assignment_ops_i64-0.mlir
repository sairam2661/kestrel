"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32, i64, i64) -> i64}> ({
    ^bb0(%arg0: i32, %arg1: i64, %arg2: i64):
      %0 = "vm.select.i64"(%arg0, %arg1, %arg2) : (i32, i64, i64) -> i64
      "vm.return"(%0) : (i64) -> ()
    }) {sym_name = "select_i64"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

