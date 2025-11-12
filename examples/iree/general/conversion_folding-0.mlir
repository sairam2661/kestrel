"builtin.module"() ({
  "vm.module"() <{sym_name = "trunc_folds"}> ({
    "vm.func"() <{function_type = () -> i32}> ({
      %2 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      %3 = "vm.trunc.i32.i8"(%2) : (i32) -> i32
      "vm.return"(%3) : (i32) -> ()
    }) {sym_name = "trunc_i8_const"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %0 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      %1 = "vm.trunc.i32.i16"(%0) : (i32) -> i32
      "vm.return"(%1) : (i32) -> ()
    }) {sym_name = "trunc_i16_const"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

