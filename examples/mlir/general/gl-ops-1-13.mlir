"builtin.module"() ({
  "func.func"() <{function_type = (ui32, ui32, ui32) -> (), sym_name = "uclamp"}> ({
  ^bb0(%arg0: ui32, %arg1: ui32, %arg2: ui32):
    %0 = "spirv.GL.UClamp"(%arg0, %arg1, %arg2) : (ui32, ui32, ui32) -> ui32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

