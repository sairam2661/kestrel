"builtin.module"() ({
  "vm.module"() <{sym_name = "speculate_casts"}> ({
    "vm.func"() <{function_type = (i32, index, index, index) -> ()}> ({
    ^bb0(%arg6: i32, %arg7: index, %arg8: index, %arg9: index):
      "scf.for"(%arg7, %arg8, %arg9) ({
      ^bb0(%arg10: index):
        %1 = "vm.cast.ui32.f32"(%arg6) : (i32) -> f32
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "cast_ui32_f32"} : () -> ()
    "vm.func"() <{function_type = (f32, i32, index, index, index) -> ()}> ({
    ^bb0(%arg0: f32, %arg1: i32, %arg2: index, %arg3: index, %arg4: index):
      "scf.for"(%arg2, %arg3, %arg4) ({
      ^bb0(%arg5: index):
        %0 = "vm.bitcast.f32.i32"(%arg0) : (f32) -> i32
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "bitcast_f32_i32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

