"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (), sym_name = "atan"}> ({
  ^bb0(%arg0: f32):
    %0 = "spirv.CL.atan"(%arg0) : (f32) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

