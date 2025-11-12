"builtin.module"() ({
  "vm.module"() <{sym_name = "select_i32_folds"}> ({
    "vm.func"() <{function_type = (i32, i32) -> i32}> ({
    ^bb0(%arg4: i32, %arg5: i32):
      %3 = "vm.const.i32.zero"() : () -> i32
      %4 = "vm.select.i32"(%3, %arg4, %arg5) : (i32, i32, i32) -> i32
      "vm.return"(%4) : (i32) -> ()
    }) {sym_name = "select_i32_zero"} : () -> ()
    "vm.func"() <{function_type = (i32, i32) -> i32}> ({
    ^bb0(%arg2: i32, %arg3: i32):
      %1 = "vm.const.i32"() <{value = 123 : i32}> : () -> i32
      %2 = "vm.select.i32"(%1, %arg2, %arg3) : (i32, i32, i32) -> i32
      "vm.return"(%2) : (i32) -> ()
    }) {sym_name = "select_i32_one"} : () -> ()
    "vm.func"() <{function_type = (i32, i32) -> i32}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "vm.select.i32"(%arg0, %arg1, %arg1) : (i32, i32, i32) -> i32
      "vm.return"(%0) : (i32) -> ()
    }) {sym_name = "select_i32_eq"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

