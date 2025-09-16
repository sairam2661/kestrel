"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> (), sym_name = "sclamp"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "spirv.GL.SClamp"(%arg0, %arg1, %arg2) : (i32, i32, i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

