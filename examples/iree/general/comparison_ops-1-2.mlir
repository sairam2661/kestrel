"builtin.module"() ({
  "vm.module"() <{sym_name = "module"}> ({
    "vm.func"() <{function_type = (i32, i32) -> i32}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "vm.cmp.lt.i32.s"(%arg0, %arg1) : (i32, i32) -> i32
      "vm.return"() : () -> ()
    }) {sym_name = "cmp_lt_i32_s"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

