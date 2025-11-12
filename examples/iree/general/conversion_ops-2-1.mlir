"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i64) -> (i32, i32, i32)}> ({
    ^bb0(%arg0: i64):
      %0 = "vm.trunc.i64.i8"(%arg0) : (i64) -> i32
      %1 = "vm.trunc.i64.i16"(%arg0) : (i64) -> i32
      %2 = "vm.trunc.i64.i32"(%arg0) : (i64) -> i32
      "vm.return"(%0, %1, %2) : (i32, i32, i32) -> ()
    }) {sym_name = "trunc_i64"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

