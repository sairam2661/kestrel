"builtin.module"() ({
  "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>}> ({
    "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = (i32) -> i32, sym_name = "foo"}> ({
    ^bb0(%arg2: i32):
      "spirv.ReturnValue"(%arg2) : (i32) -> ()
    }) : () -> ()
  }) : () -> ()
  "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>}> ({
    "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = (f32) -> f32, sym_name = "bar"}> ({
    ^bb0(%arg1: f32):
      %0 = "spirv.FunctionCall"(%arg1) <{callee = @foo}> : (f32) -> f32
      "spirv.ReturnValue"(%0) : (f32) -> ()
    }) : () -> ()
    "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = (f32) -> f32, sym_name = "foo"}> ({
    ^bb0(%arg0: f32):
      "spirv.ReturnValue"(%arg0) : (f32) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

