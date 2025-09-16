"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (), sym_name = "asin"}> ({
  ^bb0(%arg0: f32):
    %0 = "spirv.CL.asin"(%arg0) : (f32) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

