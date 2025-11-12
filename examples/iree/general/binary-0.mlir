"builtin.module"() ({
  "func.func"() <{function_type = (!util.buffer, index, index, index, !util.buffer, index, index, index, !util.buffer, index, index, index, index, index) -> (), sym_name = "add_2d_f32"}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index, %arg2: index, %arg3: index, %arg4: !util.buffer, %arg5: index, %arg6: index, %arg7: index, %arg8: !util.buffer, %arg9: index, %arg10: index, %arg11: index, %arg12: index, %arg13: index):
    "vmvx.binary"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13) <{element_type = f32, opcode = "add"}> : (!util.buffer, index, index, index, !util.buffer, index, index, index, !util.buffer, index, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

