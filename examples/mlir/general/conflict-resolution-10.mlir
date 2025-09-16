"builtin.module"() ({
  "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>}> ({
    "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = (i32) -> i32, sym_name = "foo"}> ({
    ^bb0(%arg0: i32):
      "spirv.ReturnValue"(%arg0) : (i32) -> ()
    }) : () -> ()
  }) : () -> ()
  "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>}> ({
    "spirv.SpecConstant"() <{default_value = -5 : i32, sym_name = "foo"}> : () -> ()
    "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> i32, sym_name = "bar"}> ({
      %0 = "spirv.mlir.referenceof"() <{spec_const = @foo}> : () -> i32
      "spirv.ReturnValue"(%0) : (i32) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

