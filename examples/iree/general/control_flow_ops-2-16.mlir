"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32) -> ()}> ({
    ^bb0(%arg1: i32):
      %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      "vm.cond_fail"(%arg1, %3) : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "cond_fail"} : () -> ()
    "vm.func"() <{function_type = (i32) -> ()}> ({
    ^bb0(%arg0: i32):
      %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      "vm.cond_fail"(%arg0, %2) <{message = "message"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "cond_fail_message"} : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      "vm.cond_fail"(%1, %1) : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "cond_fail_no_condition"} : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "arith.constant"() <{value = 4 : i32}> : () -> i32
      "vm.cond_fail"(%0, %0) <{message = "message"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "cond_fail_no_condition_with_message"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

