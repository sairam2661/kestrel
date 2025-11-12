"builtin.module"() ({
  "vm.module"() <{sym_name = "mul_mul_i32_folds"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %0 = "vm.const.i32"() <{value = 4 : i32}> : () -> i32
      %1 = "vm.const.i32"() <{value = 10 : i32}> : () -> i32
      %2 = "vm.mul.i32"(%arg0, %0) : (i32, i32) -> i32
      %3 = "vm.mul.i32"(%2, %1) : (i32, i32) -> i32
      "vm.return"(%3) : (i32) -> ()
    }) {sym_name = "mul_mul_i32_const"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

