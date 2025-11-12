"builtin.module"() ({
  "vm.module"() <{sym_name = "module"}> ({
    "vm.func"() <{function_type = (i32, i32) -> ()}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "vm.cmp.ne.i32"(%arg0, %arg1) : (i32, i32) -> i32
      "vm.return"() : () -> ()
    }) {sym_name = "cmp_ne_i32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

