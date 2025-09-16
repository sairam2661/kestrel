"builtin.module"() ({
  "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>}> ({
    "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = (i32) -> i32, sym_name = "foo"}> ({
    ^bb0(%arg1: i32):
      "spirv.ReturnValue"(%arg1) : (i32) -> ()
    }) : () -> ()
  }) : () -> ()
  "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>}> ({
    "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = (f32) -> f32, sym_name = "foo"}> ({
    ^bb0(%arg0: f32):
      "spirv.ReturnValue"(%arg0) : (f32) -> ()
    }) : () -> ()
    "spirv.EntryPoint"() <{execution_model = #spirv.execution_model<GLCompute>, fn = @foo, interface = []}> : () -> ()
    "spirv.ExecutionMode"() <{execution_mode = #spirv.execution_mode<ContractionOff>, fn = @foo, values = []}> : () -> ()
  }) : () -> ()
}) : () -> ()

