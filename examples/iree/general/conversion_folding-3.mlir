"builtin.module"() ({
  "vm.module"() <{sym_name = "ext_folds_i64"}> ({
    "vm.func"() <{function_type = () -> i64}> ({
      %10 = "vm.const.i32"() <{value = 255 : i32}> : () -> i32
      %11 = "vm.ext.i8.i64.s"(%10) : (i32) -> i64
      "vm.return"(%11) : (i64) -> ()
    }) {sym_name = "ext_i8_i64_s_const"} : () -> ()
    "vm.func"() <{function_type = () -> i64}> ({
      %8 = "vm.const.i32"() <{value = 255 : i32}> : () -> i32
      %9 = "vm.ext.i8.i64.u"(%8) : (i32) -> i64
      "vm.return"(%9) : (i64) -> ()
    }) {sym_name = "ext_i8_i64_u_const"} : () -> ()
    "vm.func"() <{function_type = () -> i64}> ({
      %6 = "vm.const.i32"() <{value = 65535 : i32}> : () -> i32
      %7 = "vm.ext.i16.i64.s"(%6) : (i32) -> i64
      "vm.return"(%7) : (i64) -> ()
    }) {sym_name = "ext_i16_i64_s_const"} : () -> ()
    "vm.func"() <{function_type = () -> i64}> ({
      %4 = "vm.const.i32"() <{value = 65535 : i32}> : () -> i32
      %5 = "vm.ext.i16.i64.u"(%4) : (i32) -> i64
      "vm.return"(%5) : (i64) -> ()
    }) {sym_name = "ext_i16_i64_u_const"} : () -> ()
    "vm.func"() <{function_type = () -> i64}> ({
      %2 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      %3 = "vm.ext.i32.i64.s"(%2) : (i32) -> i64
      "vm.return"(%3) : (i64) -> ()
    }) {sym_name = "ext_i32_i64_s_const"} : () -> ()
    "vm.func"() <{function_type = () -> i64}> ({
      %0 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      %1 = "vm.ext.i32.i64.u"(%0) : (i32) -> i64
      "vm.return"(%1) : (i64) -> ()
    }) {sym_name = "ext_i32_i64_u_const"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

