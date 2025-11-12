"builtin.module"() ({
  "vm.module"() <{sym_name = "cmp_ulte_i32_folds"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %6 = "vm.cmp.lte.i32.u"(%arg0, %arg0) : (i32, i32) -> i32
      "vm.return"(%6) : (i32) -> ()
    }) {sym_name = "always_eq"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %3 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      %4 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %5 = "vm.cmp.lte.i32.u"(%4, %3) : (i32, i32) -> i32
      "vm.return"(%5) : (i32) -> ()
    }) {sym_name = "const_true"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %0 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      %1 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %2 = "vm.cmp.lte.i32.u"(%0, %1) : (i32, i32) -> i32
      "vm.return"(%2) : (i32) -> ()
    }) {sym_name = "const_false"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

