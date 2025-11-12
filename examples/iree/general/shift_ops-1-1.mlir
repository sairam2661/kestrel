"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %0 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %1 = "vm.shr.i32.s"(%arg0, %0) : (i32, i32) -> i32
      "vm.return"(%1) : (i32) -> ()
    }) {sym_name = "shr_i32_s"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

