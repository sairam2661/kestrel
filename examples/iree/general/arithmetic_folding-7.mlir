"builtin.module"() ({
  "vm.module"() <{sym_name = "abs_i32_folds"}> ({
    "vm.func"() <{function_type = () -> i32}> ({
      %0 = "vm.const.i32"() <{value = -2 : i32}> : () -> i32
      %1 = "vm.abs.i32"(%0) : (i32) -> i32
      "vm.return"(%1) : (i32) -> ()
    }) {sym_name = "abs_i32_const"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

