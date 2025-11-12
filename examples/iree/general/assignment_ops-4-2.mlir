"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %0 = "vm.const.i32"() <{value = 5 : i32}> : () -> i32
      %1 = "vm.const.i32"() <{value = 100 : i32}> : () -> i32
      %2 = "vm.const.i32"() <{value = 200 : i32}> : () -> i32
      %3 = "vm.const.i32"() <{value = 300 : i32}> : () -> i32
      %4 = "vm.switch.i32"(%arg0, %0, %1, %2, %3) : (i32, i32, i32, i32, i32) -> i32
      "vm.return"(%4) : (i32) -> ()
    }) {sym_name = "switch_i32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

