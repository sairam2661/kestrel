"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32, i32) -> i32}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "vm.max.i32.s"(%arg0, %arg1) : (i32, i32) -> i32
      "vm.return"(%0) : (i32) -> ()
    }) {sym_name = "max_i32_s"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

