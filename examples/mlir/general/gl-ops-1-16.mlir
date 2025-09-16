"builtin.module"() ({
  "func.func"() <{function_type = (si32, si32, si32) -> (), sym_name = "sclamp"}> ({
  ^bb0(%arg0: si32, %arg1: si32, %arg2: si32):
    %0 = "spirv.GL.SClamp"(%arg0, %arg1, %arg2) : (si32, si32, si32) -> si32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

