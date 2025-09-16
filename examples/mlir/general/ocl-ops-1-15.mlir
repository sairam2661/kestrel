"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, f32) -> (), sym_name = "fma"}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
    %0 = "spirv.CL.fma"(%arg0, %arg1, %arg2) : (f32, f32, f32) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

