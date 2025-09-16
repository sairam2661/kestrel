"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (), sym_name = "ldexp"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "spirv.GL.Ldexp"(%arg0, %arg1) : (f32, i32) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

