"builtin.module"() ({
  "vm.module"() <{sym_name = "constant_ops"}> ({
    "vm.func"() <{function_type = () -> i32}> ({
      %0 = "vm.const.i32"() <{value = -4 : i32}> : () -> i32
      "vm.return"(%0) : (i32) -> ()
    }) {sym_name = "neg_constant"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

