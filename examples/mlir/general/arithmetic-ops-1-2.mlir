"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> f32, sym_name = "fdiv_scalar"}> ({
  ^bb0(%arg0: f32):
    %0 = "spirv.FDiv"(%arg0, %arg0) : (f32, f32) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

