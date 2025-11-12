"builtin.module"() ({
  "vm.module"() <{sym_name = "speculate_float"}> ({
    "vm.func"() <{function_type = (f64, f64, index, index, index) -> ()}> ({
    ^bb0(%arg24: f64, %arg25: f64, %arg26: index, %arg27: index, %arg28: index):
      "scf.for"(%arg26, %arg27, %arg28) ({
      ^bb0(%arg29: index):
        %4 = "vm.add.f64"(%arg24, %arg25) : (f64, f64) -> f64
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "add_f64"} : () -> ()
    "vm.func"() <{function_type = (f64, f64, index, index, index) -> ()}> ({
    ^bb0(%arg18: f64, %arg19: f64, %arg20: index, %arg21: index, %arg22: index):
      "scf.for"(%arg20, %arg21, %arg22) ({
      ^bb0(%arg23: index):
        %3 = "vm.mul.f64"(%arg18, %arg19) : (f64, f64) -> f64
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "mul_f64"} : () -> ()
    "vm.func"() <{function_type = (f64, index, index, index) -> ()}> ({
    ^bb0(%arg13: f64, %arg14: index, %arg15: index, %arg16: index):
      "scf.for"(%arg14, %arg15, %arg16) ({
      ^bb0(%arg17: index):
        %2 = "vm.neg.f64"(%arg13) : (f64) -> f64
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "neg_f64"} : () -> ()
    "vm.func"() <{function_type = (f32, index, index, index) -> ()}> ({
    ^bb0(%arg8: f32, %arg9: index, %arg10: index, %arg11: index):
      "scf.for"(%arg9, %arg10, %arg11) ({
      ^bb0(%arg12: index):
        %1 = "vm.atan.f32"(%arg8) : (f32) -> f32
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "atan_f32"} : () -> ()
    "vm.func"() <{function_type = (i32, f64, f64, f64, index, index, index) -> ()}> ({
    ^bb0(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: f64, %arg4: index, %arg5: index, %arg6: index):
      "scf.for"(%arg4, %arg5, %arg6) ({
      ^bb0(%arg7: index):
        %0 = "vm.switch.f64"(%arg0, %arg3, %arg1, %arg2) : (i32, f64, f64, f64) -> f64
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "switch_f64"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

