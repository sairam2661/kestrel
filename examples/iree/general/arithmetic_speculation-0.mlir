"builtin.module"() ({
  "vm.module"() <{sym_name = "no_speculate_integer"}> ({
    "vm.func"() <{function_type = (i32, i32, index, index, index) -> ()}> ({
    ^bb0(%arg25: i32, %arg26: i32, %arg27: index, %arg28: index, %arg29: index):
      "scf.for"(%arg27, %arg28, %arg29) ({
      ^bb0(%arg30: index):
        %4 = "vm.add.i32"(%arg25, %arg26) : (i32, i32) -> i32
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "add_i32"} : () -> ()
    "vm.func"() <{function_type = (i32, i32, index, index, index) -> ()}> ({
    ^bb0(%arg19: i32, %arg20: i32, %arg21: index, %arg22: index, %arg23: index):
      "scf.for"(%arg21, %arg22, %arg23) ({
      ^bb0(%arg24: index):
        %3 = "vm.mul.i32"(%arg19, %arg20) : (i32, i32) -> i32
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "mul_i32"} : () -> ()
    "vm.func"() <{function_type = (i32, i32, index, index, index) -> ()}> ({
    ^bb0(%arg13: i32, %arg14: i32, %arg15: index, %arg16: index, %arg17: index):
      "scf.for"(%arg15, %arg16, %arg17) ({
      ^bb0(%arg18: index):
        %2 = "vm.div.i32.u"(%arg13, %arg14) : (i32, i32) -> i32
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "div_ui32"} : () -> ()
    "vm.func"() <{function_type = (i32, i32, index, index, index) -> ()}> ({
    ^bb0(%arg7: i32, %arg8: i32, %arg9: index, %arg10: index, %arg11: index):
      "scf.for"(%arg9, %arg10, %arg11) ({
      ^bb0(%arg12: index):
        %1 = "vm.shl.i32"(%arg7, %arg8) : (i32, i32) -> i32
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "shl_i32"} : () -> ()
    "vm.func"() <{function_type = (i64, i64, i64, index, index, index) -> ()}> ({
    ^bb0(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: index, %arg4: index, %arg5: index):
      "scf.for"(%arg3, %arg4, %arg5) ({
      ^bb0(%arg6: index):
        %0 = "vm.fma.i64"(%arg0, %arg1, %arg2) : (i64, i64, i64) -> i64
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "fma_i64"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

