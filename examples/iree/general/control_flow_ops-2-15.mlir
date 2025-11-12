"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = () -> ()}> ({
      %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      "vm.fail"(%1) : (i32) -> ()
    }) {sym_name = "fail"} : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      "vm.fail"(%0) <{message = "message"}> : (i32) -> ()
    }) {sym_name = "fail_message"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

