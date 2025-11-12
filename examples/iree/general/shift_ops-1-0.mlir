"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %0 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %1 = "vm.shl.i32"(%arg0, %0) : (i32, i32) -> i32
      "vm.return"(%1) : (i32) -> ()
    }) {sym_name = "shl_i32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

