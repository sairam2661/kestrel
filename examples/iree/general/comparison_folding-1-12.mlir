"builtin.module"() ({
  "vm.module"() <{sym_name = "cmp_nz_i32_folds"}> ({
    "vm.func"() <{function_type = () -> i32}> ({
      %2 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %3 = "vm.cmp.nz.i32"(%2) : (i32) -> i32
      "vm.return"(%3) : (i32) -> ()
    }) {sym_name = "const_nonzero"} : () -> ()
    "vm.func"() <{function_type = () -> i32}> ({
      %0 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %1 = "vm.cmp.nz.i32"(%0) : (i32) -> i32
      "vm.return"(%1) : (i32) -> ()
    }) {sym_name = "const_zero"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

