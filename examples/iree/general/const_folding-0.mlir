"builtin.module"() ({
  "vm.module"() <{sym_name = "const_i32_folds"}> ({
    "vm.func"() <{function_type = () -> (i32, i32)}> ({
      %2 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %3 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.return"(%2, %3) : (i32, i32) -> ()
    }) {sym_name = "cse"} : () -> ()
    "vm.func"() <{function_type = () -> (i32, i32)}> ({
      %0 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %1 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.return"(%0, %1) : (i32, i32) -> ()
    }) {sym_name = "cse_zero"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

