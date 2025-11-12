"builtin.module"() ({
  "vm.module"() <{sym_name = "calling_convention_test"}> ({
    "vm.func"() <{function_type = () -> ()}> ({
      "vm.return"() : () -> ()
    }) {sym_name = "no_in_no_return"} : () -> ()
    "vm.func"() <{function_type = (i32) -> ()}> ({
    ^bb0(%arg1: i32):
      "vm.return"() : () -> ()
    }) {sym_name = "i32_in_no_return"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %1 = "vm.const.i32"() <{value = 32 : i32}> : () -> i32
      "vm.return"(%1) : (i32) -> ()
    }) {sym_name = "no_in_i32_return"} : () -> ()
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %0 = "vm.const.i32"() <{value = 32 : i32}> : () -> i32
      "vm.return"(%0) : (i32) -> ()
    }) {sym_name = "i32_in_i32_return"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

