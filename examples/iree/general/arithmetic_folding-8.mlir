"builtin.module"() ({
  "vm.module"() <{sym_name = "min_i32_folds"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg1: i32):
      %7 = "vm.const.i32"() <{value = 123 : i32}> : () -> i32
      %8 = "vm.min.i32.s"(%7, %arg1) : (i32, i32) -> i32
      "vm.return"(%8) : (i32) -> ()
    }) {sym_name = "min_i32_cst_y"} : () -> ()
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %6 = "vm.min.i32.s"(%arg0, %arg0) : (i32, i32) -> i32
      "vm.return"(%6) : (i32) -> ()
    }) {sym_name = "min_i32_x_x"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %3 = "vm.const.i32"() <{value = -5 : i32}> : () -> i32
      %4 = "vm.const.i32"() <{value = 4 : i32}> : () -> i32
      %5 = "vm.min.i32.s"(%3, %4) : (i32, i32) -> i32
      "vm.return"(%5) : (i32) -> ()
    }) {sym_name = "min_i32_s_const"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %0 = "vm.const.i32"() <{value = 2147483647 : i32}> : () -> i32
      %1 = "vm.const.i32"() <{value = -2147483648 : i32}> : () -> i32
      %2 = "vm.min.i32.u"(%0, %1) : (i32, i32) -> i32
      "vm.return"(%2) : (i32) -> ()
    }) {sym_name = "min_i32_u_const"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

