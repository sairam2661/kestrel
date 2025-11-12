"builtin.module"() ({
  "vm.module"() <{sym_name = "speculate_integer"}> ({
    "vm.func"() <{function_type = (index, index, index) -> ()}> ({
    ^bb0(%arg19: index, %arg20: index, %arg21: index):
      "scf.for"(%arg19, %arg20, %arg21) ({
      ^bb0(%arg22: index):
        %3 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "const_i32"} : () -> ()
    "vm.func"() <{function_type = (i32, index, index, index) -> ()}> ({
    ^bb0(%arg14: i32, %arg15: index, %arg16: index, %arg17: index):
      "scf.for"(%arg15, %arg16, %arg17) ({
      ^bb0(%arg18: index):
        %2 = "vm.not.i32"(%arg14) : (i32) -> i32
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "not_i32"} : () -> ()
    "vm.func"() <{function_type = (i32, i32, index, index, index) -> ()}> ({
    ^bb0(%arg8: i32, %arg9: i32, %arg10: index, %arg11: index, %arg12: index):
      "scf.for"(%arg10, %arg11, %arg12) ({
      ^bb0(%arg13: index):
        %1 = "vm.and.i32"(%arg8, %arg9) : (i32, i32) -> i32
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "and_i32"} : () -> ()
    "vm.func"() <{function_type = (i32, i64, i64, i64, index, index, index) -> ()}> ({
    ^bb0(%arg0: i32, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: index, %arg5: index, %arg6: index):
      "scf.for"(%arg4, %arg5, %arg6) ({
      ^bb0(%arg7: index):
        %0 = "vm.switch.i64"(%arg0, %arg3, %arg1, %arg2) : (i32, i64, i64, i64) -> i64
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "switch_i64"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

