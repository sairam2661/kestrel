"builtin.module"() ({
  "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>}> ({
    "spirv.SpecConstant"() <{default_value = 1.000000e+00 : f32, sym_name = "foo"}> {spec_id = 5 : i64} : () -> ()
    "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> f32, sym_name = "use_foo"}> ({
      %2 = "spirv.mlir.referenceof"() <{spec_const = @foo}> : () -> f32
      "spirv.ReturnValue"(%2) : (f32) -> ()
    }) : () -> ()
  }) : () -> ()
  "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>}> ({
    "spirv.SpecConstant"() <{default_value = 1.000000e+00 : f32, sym_name = "bar"}> {spec_id = 5 : i64} : () -> ()
    "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> f32, sym_name = "use_bar"}> ({
      %0 = "spirv.mlir.referenceof"() <{spec_const = @bar}> : () -> f32
      %1 = "spirv.FAdd"(%0, %0) : (f32, f32) -> f32
      "spirv.ReturnValue"(%1) : (f32) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

