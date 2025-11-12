"builtin.module"() ({
  "vm.module"() <{sym_name = "trunc_folds_i64"}> ({
    "vm.func"() <{function_type = () -> i32}> ({
      %4 = "vm.const.i64"() <{value = -1 : i64}> : () -> i64
      %5 = "vm.trunc.i64.i8"(%4) : (i64) -> i32
      "vm.return"(%5) : (i32) -> ()
    }) {sym_name = "trunc_i8_const"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %2 = "vm.const.i64"() <{value = -1 : i64}> : () -> i64
      %3 = "vm.trunc.i64.i16"(%2) : (i64) -> i32
      "vm.return"(%3) : (i32) -> ()
    }) {sym_name = "trunc_i16_const"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %0 = "vm.const.i64"() <{value = -1 : i64}> : () -> i64
      %1 = "vm.trunc.i64.i32"(%0) : (i64) -> i32
      "vm.return"(%1) : (i32) -> ()
    }) {sym_name = "trunc_i32_const"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

