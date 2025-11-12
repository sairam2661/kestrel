"builtin.module"() ({
  "vm.module"() <{sym_name = "and_i32_folds"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg1: i32):
      %4 = "vm.const.i32.zero"() : () -> i32
      %5 = "vm.and.i32"(%arg1, %4) : (i32, i32) -> i32
      "vm.return"(%5) : (i32) -> ()
    }) {sym_name = "and_i32_zero"} : () -> ()
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %3 = "vm.and.i32"(%arg0, %arg0) : (i32, i32) -> i32
      "vm.return"(%3) : (i32) -> ()
    }) {sym_name = "and_i32_eq"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %0 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %1 = "vm.const.i32"() <{value = 3 : i32}> : () -> i32
      %2 = "vm.and.i32"(%0, %1) : (i32, i32) -> i32
      "vm.return"(%2) : (i32) -> ()
    }) {sym_name = "and_i32_const"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

