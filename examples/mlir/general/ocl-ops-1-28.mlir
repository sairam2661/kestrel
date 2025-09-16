"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (), sym_name = "sinh"}> ({
  ^bb0(%arg0: f32):
    %0 = "spirv.CL.sinh"(%arg0) : (f32) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

