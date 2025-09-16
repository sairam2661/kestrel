"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (), sym_name = "atanh"}> ({
  ^bb0(%arg0: f32):
    %0 = "spirv.CL.atanh"(%arg0) : (f32) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

