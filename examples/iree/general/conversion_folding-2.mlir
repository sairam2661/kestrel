"builtin.module"() ({
  "vm.module"() <{sym_name = "ext_folds"}> ({
    "vm.func"() <{function_type = () -> i32}> ({
      %6 = "vm.const.i32"() <{value = 255 : i32}> : () -> i32
      %7 = "vm.ext.i8.i32.s"(%6) : (i32) -> i32
      "vm.return"(%7) : (i32) -> ()
    }) {sym_name = "ext_i8_i32_s_const"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %4 = "vm.const.i32"() <{value = 255 : i32}> : () -> i32
      %5 = "vm.ext.i8.i32.u"(%4) : (i32) -> i32
      "vm.return"(%5) : (i32) -> ()
    }) {sym_name = "ext_i8_i32_u_const"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %2 = "vm.const.i32"() <{value = 65535 : i32}> : () -> i32
      %3 = "vm.ext.i16.i32.s"(%2) : (i32) -> i32
      "vm.return"(%3) : (i32) -> ()
    }) {sym_name = "ext_i16_i32_s_const"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %0 = "vm.const.i32"() <{value = 65535 : i32}> : () -> i32
      %1 = "vm.ext.i16.i32.u"(%0) : (i32) -> i32
      "vm.return"(%1) : (i32) -> ()
    }) {sym_name = "ext_i16_i32_u_const"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

