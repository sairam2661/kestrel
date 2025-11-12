"builtin.module"() ({
  "vm.module"() <{sym_name = "div_i32_folds"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg3: i32):
      %7 = "vm.const.i32.zero"() : () -> i32
      %8 = "vm.div.i32.s"(%7, %arg3) : (i32, i32) -> i32
      "vm.return"(%8) : (i32) -> ()
    }) {sym_name = "div_i32_0_y"} : () -> ()
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg2: i32):
      %5 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %6 = "vm.div.i32.s"(%arg2, %5) : (i32, i32) -> i32
      "vm.return"(%6) : (i32) -> ()
    }) {sym_name = "div_i32_x_1"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %2 = "vm.const.i32"() <{value = 15 : i32}> : () -> i32
      %3 = "vm.const.i32"() <{value = 5 : i32}> : () -> i32
      %4 = "vm.div.i32.s"(%2, %3) : (i32, i32) -> i32
      "vm.return"(%4) : (i32) -> ()
    }) {sym_name = "div_i32_const"} : () -> ()
    "vm.func"() <{function_type = (i32, i32) -> i32}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "vm.mul.i32"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "vm.div.i32.s"(%0, %arg1) : (i32, i32) -> i32
      "vm.return"(%1) : (i32) -> ()
    }) {sym_name = "mul_div_i32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

