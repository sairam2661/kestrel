"builtin.module"() ({
  "vm.module"() <{sym_name = "or_i32_folds"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg2: i32):
      %6 = "vm.const.i32.zero"() : () -> i32
      %7 = "vm.or.i32"(%6, %arg2) : (i32, i32) -> i32
      "vm.return"(%7) : (i32) -> ()
    }) {sym_name = "or_i32_0_y"} : () -> ()
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg1: i32):
      %4 = "vm.const.i32.zero"() : () -> i32
      %5 = "vm.or.i32"(%arg1, %4) : (i32, i32) -> i32
      "vm.return"(%5) : (i32) -> ()
    }) {sym_name = "or_i32_x_0"} : () -> ()
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %3 = "vm.or.i32"(%arg0, %arg0) : (i32, i32) -> i32
      "vm.return"(%3) : (i32) -> ()
    }) {sym_name = "or_i32_x_x"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %0 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %1 = "vm.const.i32"() <{value = 4 : i32}> : () -> i32
      %2 = "vm.or.i32"(%0, %1) : (i32, i32) -> i32
      "vm.return"(%2) : (i32) -> ()
    }) {sym_name = "or_i32_const"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

