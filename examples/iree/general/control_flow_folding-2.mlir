"builtin.module"() ({
  "vm.module"() <{sym_name = "cond_fail_folds"}> ({
    "vm.func"() <{function_type = (i32) -> ()}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      "vm.cond_fail"(%arg0, %0) <{message = "message"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "cond_fail_to_cond_br_fail"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

