"builtin.module"() ({
  "vm.module"() <{sym_name = "module"}> ({
    "vm.func"() <{function_type = (i64, i64) -> i64}> ({
    ^bb0(%arg0: i64, %arg1: i64):
      %0 = "vm.cmp.eq.i64"(%arg0, %arg1) : (i64, i64) -> i32
      "vm.return"() : () -> ()
    }) {sym_name = "cmp_eq_i64"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

