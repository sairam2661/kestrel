"builtin.module"() ({
  "vm.module"() <{sym_name = "shr_i64_u_folds"}> ({
    "vm.func"() <{function_type = () -> i64}> ({
      %5 = "vm.const.i64.zero"() : () -> i64
      %6 = "vm.const.i32"() <{value = 4 : i32}> : () -> i32
      %7 = "vm.shr.i64.u"(%5, %6) : (i64, i32) -> i64
      "vm.return"(%7) : (i64) -> ()
    }) {sym_name = "shr_i64_u_0_by_y"} : () -> ()
    "vm.func"() <{function_type = (i64) -> i64}> ({
    ^bb0(%arg0: i64):
      %3 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %4 = "vm.shr.i64.u"(%arg0, %3) : (i64, i32) -> i64
      "vm.return"(%4) : (i64) -> ()
    }) {sym_name = "shr_i64_u_x_by_0"} : () -> ()
    "vm.func"() <{function_type = () -> i64}> ({
      %0 = "vm.const.i64"() <{value = -9223372036854775808 : i64}> : () -> i64
      %1 = "vm.const.i32"() <{value = 4 : i32}> : () -> i32
      %2 = "vm.shr.i64.u"(%0, %1) : (i64, i32) -> i64
      "vm.return"(%2) : (i64) -> ()
    }) {sym_name = "shr_i64_u_const"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

