"builtin.module"() ({
  "func.func"() <{function_type = (!util.buffer, index, index, index, index, f32) -> (), sym_name = "fill2d_f32"}> ({
  ^bb0(%arg6: !util.buffer, %arg7: index, %arg8: index, %arg9: index, %arg10: index, %arg11: f32):
    "vmvx.fill2d"(%arg11, %arg6, %arg7, %arg8, %arg9, %arg10) : (f32, !util.buffer, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!util.buffer, index, index, index, index, i32) -> (), sym_name = "fill2d_i32"}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: i32):
    "vmvx.fill2d"(%arg5, %arg0, %arg1, %arg2, %arg3, %arg4) : (i32, !util.buffer, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

