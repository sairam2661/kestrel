"builtin.module"() ({
  "vm.module"() <{sym_name = "module"}> ({
    "vm.func"() <{function_type = (i32, i32) -> i32}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "vm.cmp.lt.i32.u"(%arg0, %arg1) : (i32, i32) -> i32
      "vm.return"() : () -> ()
    }) {sym_name = "cmp_lt_i32_u"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

