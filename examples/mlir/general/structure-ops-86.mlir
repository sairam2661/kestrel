"builtin.module"() ({
  "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>}> ({
    "spirv.SpecConstant"() <{default_value = 42 : i32, sym_name = "sc"}> : () -> ()
    "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> i32, sym_name = "foo"}> ({
      %0 = "spirv.mlir.referenceof"() <{spec_const = @sc}> : () -> i32
      %1 = "spirv.SpecConstantOperation"() ({
        %2 = "spirv.ISub"(%0, %0) : (i32, i32) -> i32
        "spirv.mlir.yield"(%2) : (i32) -> ()
      }) : () -> i32
      "spirv.ReturnValue"(%1) : (i32) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

