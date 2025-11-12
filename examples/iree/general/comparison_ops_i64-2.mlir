"builtin.module"() ({
  "vm.module"() <{sym_name = "module"}> ({
    "vm.func"() <{function_type = (i64, i64) -> i64}> ({
    ^bb0(%arg0: i64, %arg1: i64):
      %0 = "vm.cmp.lt.i64.s"(%arg0, %arg1) : (i64, i64) -> i32
      "vm.return"() : () -> ()
    }) {sym_name = "cmp_lt_i64_s"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

