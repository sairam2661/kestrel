"builtin.module"() ({
  "vm.module"() <{sym_name = "switch_i32_folds"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg1: i32):
      %14 = "vm.const.i32"() <{value = 5 : i32}> : () -> i32
      %15 = "vm.switch.i32"(%arg1, %14) : (i32, i32) -> i32
      "vm.return"(%15) : (i32) -> ()
    }) {sym_name = "switch_i32_nop"} : () -> ()
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %12 = "vm.const.i32"() <{value = 100 : i32}> : () -> i32
      %13 = "vm.switch.i32"(%arg0, %12, %12, %12, %12) : (i32, i32, i32, i32, i32) -> i32
      "vm.return"(%13) : (i32) -> ()
    }) {sym_name = "switch_i32_identical"} : () -> ()
    "vm.func"() <{function_type = () -> (i32, i32, i32, i32)}> ({
      %0 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %1 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %2 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %3 = "vm.const.i32"() <{value = 3 : i32}> : () -> i32
      %4 = "vm.const.i32"() <{value = 100 : i32}> : () -> i32
      %5 = "vm.const.i32"() <{value = 200 : i32}> : () -> i32
      %6 = "vm.const.i32"() <{value = 300 : i32}> : () -> i32
      %7 = "vm.const.i32"() <{value = 400 : i32}> : () -> i32
      %8 = "vm.switch.i32"(%0, %7, %4, %5, %6) : (i32, i32, i32, i32, i32) -> i32
      %9 = "vm.switch.i32"(%1, %7, %4, %5, %6) : (i32, i32, i32, i32, i32) -> i32
      %10 = "vm.switch.i32"(%2, %7, %4, %5, %6) : (i32, i32, i32, i32, i32) -> i32
      %11 = "vm.switch.i32"(%3, %7, %4, %5, %6) : (i32, i32, i32, i32, i32) -> i32
      "vm.return"(%8, %9, %10, %11) : (i32, i32, i32, i32) -> ()
    }) {sym_name = "switch_i32_constant_index"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

