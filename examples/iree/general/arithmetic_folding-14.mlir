"builtin.module"() ({
  "vm.module"() <{sym_name = "shl_i32_folds"}> ({
    "vm.func"() <{function_type = () -> i32}> ({
      %5 = "vm.const.i32.zero"() : () -> i32
      %6 = "vm.const.i32"() <{value = 4 : i32}> : () -> i32
      %7 = "vm.shl.i32"(%5, %6) : (i32, i32) -> i32
      "vm.return"(%7) : (i32) -> ()
    }) {sym_name = "shl_i32_0_by_y"} : () -> ()
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %3 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %4 = "vm.shl.i32"(%arg0, %3) : (i32, i32) -> i32
      "vm.return"(%4) : (i32) -> ()
    }) {sym_name = "shl_i32_x_by_0"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %0 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %1 = "vm.const.i32"() <{value = 4 : i32}> : () -> i32
      %2 = "vm.shl.i32"(%0, %1) : (i32, i32) -> i32
      "vm.return"(%2) : (i32) -> ()
    }) {sym_name = "shl_i32_const"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

