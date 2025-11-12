"builtin.module"() ({
  "vm.module"() <{sym_name = "cmp_slt_i64_folds"}> ({
    "vm.func"() <{function_type = (i64) -> i32}> ({
    ^bb0(%arg0: i64):
      %6 = "vm.cmp.lt.i64.s"(%arg0, %arg0) : (i64, i64) -> i32
      "vm.return"(%6) : (i32) -> ()
    }) {sym_name = "always_eq"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %3 = "vm.const.i64"() <{value = -1 : i64}> : () -> i64
      %4 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %5 = "vm.cmp.lt.i64.s"(%3, %4) : (i64, i64) -> i32
      "vm.return"(%5) : (i32) -> ()
    }) {sym_name = "const_true"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %0 = "vm.const.i64"() <{value = -1 : i64}> : () -> i64
      %1 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %2 = "vm.cmp.lt.i64.s"(%1, %0) : (i64, i64) -> i32
      "vm.return"(%2) : (i32) -> ()
    }) {sym_name = "const_false"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

