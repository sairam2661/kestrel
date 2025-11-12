"builtin.module"() ({
  "func.func"() <{function_type = (!util.buffer, index, index, index, !util.buffer, index, index, index, index, index) -> (), sym_name = "abs_2d_f32"}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index, %arg2: index, %arg3: index, %arg4: !util.buffer, %arg5: index, %arg6: index, %arg7: index, %arg8: index, %arg9: index):
    "vmvx.unary"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9) <{element_type = f32, opcode = "abs"}> : (!util.buffer, index, index, index, !util.buffer, index, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

