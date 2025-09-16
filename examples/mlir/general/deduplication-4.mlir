"builtin.module"() ({
  "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>}> ({
    "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = (f32, f32, f32) -> f32, sym_name = "foo"}> ({
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
      %2 = "spirv.FAdd"(%arg3, %arg4) : (f32, f32) -> f32
      %3 = "spirv.FMul"(%2, %arg5) : (f32, f32) -> f32
      "spirv.ReturnValue"(%3) : (f32) -> ()
    }) : () -> ()
  }) : () -> ()
  "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>}> ({
    "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = (f32, f32, f32) -> f32, sym_name = "foo"}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %0 = "spirv.FAdd"(%arg0, %arg2) : (f32, f32) -> f32
      %1 = "spirv.FMul"(%0, %arg1) : (f32, f32) -> f32
      "spirv.ReturnValue"(%1) : (f32) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

