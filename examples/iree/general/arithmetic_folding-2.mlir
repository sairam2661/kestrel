"builtin.module"() ({
  "vm.module"() <{sym_name = "add_sub_i32_folds"}> ({
    "vm.func"() <{function_type = (i32, i32) -> i32}> ({
    ^bb0(%arg4: i32, %arg5: i32):
      %4 = "vm.add.i32"(%arg4, %arg5) : (i32, i32) -> i32
      %5 = "vm.sub.i32"(%4, %arg5) : (i32, i32) -> i32
      "vm.return"(%5) : (i32) -> ()
    }) {sym_name = "add_sub_x"} : () -> ()
    "vm.func"() <{function_type = (i32, i32) -> i32}> ({
    ^bb0(%arg2: i32, %arg3: i32):
      %2 = "vm.sub.i32"(%arg2, %arg3) : (i32, i32) -> i32
      %3 = "vm.add.i32"(%2, %arg3) : (i32, i32) -> i32
      "vm.return"(%3) : (i32) -> ()
    }) {sym_name = "sub_add_x"} : () -> ()
    "vm.func"() <{function_type = (i32, i32) -> i32}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "vm.sub.i32"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "vm.add.i32"(%arg1, %0) : (i32, i32) -> i32
      "vm.return"(%1) : (i32) -> ()
    }) {sym_name = "sub_add_x_rev"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

