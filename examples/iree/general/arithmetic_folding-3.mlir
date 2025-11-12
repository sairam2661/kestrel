"builtin.module"() ({
  "vm.module"() <{sym_name = "mul_i32_folds"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg2: i32):
      %7 = "vm.const.i32.zero"() : () -> i32
      %8 = "vm.mul.i32"(%arg2, %7) : (i32, i32) -> i32
      "vm.return"(%8) : (i32) -> ()
    }) {sym_name = "mul_i32_by_0"} : () -> ()
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg1: i32):
      %5 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %6 = "vm.mul.i32"(%5, %arg1) : (i32, i32) -> i32
      "vm.return"(%6) : (i32) -> ()
    }) {sym_name = "mul_i32_1_y"} : () -> ()
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %3 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %4 = "vm.mul.i32"(%arg0, %3) : (i32, i32) -> i32
      "vm.return"(%4) : (i32) -> ()
    }) {sym_name = "mul_i32_x_1"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %0 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %1 = "vm.const.i32"() <{value = 4 : i32}> : () -> i32
      %2 = "vm.mul.i32"(%0, %1) : (i32, i32) -> i32
      "vm.return"(%2) : (i32) -> ()
    }) {sym_name = "mul_i32_const"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

