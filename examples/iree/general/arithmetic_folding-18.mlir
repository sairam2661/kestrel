"builtin.module"() ({
  "vm.module"() <{sym_name = "fma_i32_folds"}> ({
    "vm.func"() <{function_type = (i32, i32) -> i32}> ({
    ^bb0(%arg6: i32, %arg7: i32):
      %6 = "vm.const.i32.zero"() : () -> i32
      %7 = "vm.fma.i32"(%6, %arg6, %arg7) : (i32, i32, i32) -> i32
      "vm.return"(%7) : (i32) -> ()
    }) {sym_name = "fma_i32_0_b_c"} : () -> ()
    "vm.func"() <{function_type = (i32, i32) -> i32}> ({
    ^bb0(%arg4: i32, %arg5: i32):
      %4 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %5 = "vm.fma.i32"(%4, %arg4, %arg5) : (i32, i32, i32) -> i32
      "vm.return"(%5) : (i32) -> ()
    }) {sym_name = "fma_i32_1_b_c"} : () -> ()
    "vm.func"() <{function_type = (i32, i32) -> i32}> ({
    ^bb0(%arg2: i32, %arg3: i32):
      %2 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %3 = "vm.fma.i32"(%arg2, %2, %arg3) : (i32, i32, i32) -> i32
      "vm.return"(%3) : (i32) -> ()
    }) {sym_name = "fma_i32_a_1_c"} : () -> ()
    "vm.func"() <{function_type = (i32, i32) -> i32}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "vm.const.i32.zero"() : () -> i32
      %1 = "vm.fma.i32"(%arg0, %arg1, %0) : (i32, i32, i32) -> i32
      "vm.return"(%1) : (i32) -> ()
    }) {sym_name = "fma_i32_a_b_0"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

