"builtin.module"() ({
  "vm.module"() <{sym_name = "ctlz_i32_folds"}> ({
    "vm.func"() <{function_type = () -> i32}> ({
      %4 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %5 = "vm.ctlz.i32"(%4) : (i32) -> i32
      "vm.return"(%5) : (i32) -> ()
    }) {sym_name = "ctlz_i32_const_zero"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %2 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %3 = "vm.ctlz.i32"(%2) : (i32) -> i32
      "vm.return"(%3) : (i32) -> ()
    }) {sym_name = "ctlz_i32_const_1"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %0 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      %1 = "vm.ctlz.i32"(%0) : (i32) -> i32
      "vm.return"(%1) : (i32) -> ()
    }) {sym_name = "ctlz_i32_const_ffffffff"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

