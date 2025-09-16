"builtin.module"() ({
  "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>}> ({
    "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> i32, sym_name = "foo"}> ({
      %0 = "spirv.Constant"() <{value = 1 : i32}> : () -> i32
      %1 = "spirv.Constant"() <{value = 1 : i32}> : () -> i32
      %2 = "spirv.SpecConstantOperation"() ({
        %3 = "spirv.IAdd"(%0, %1) : (i32, i32) -> i32
        "spirv.mlir.yield"(%3) : (i32) -> ()
      }) : () -> i32
      "spirv.ReturnValue"(%2) : (i32) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

