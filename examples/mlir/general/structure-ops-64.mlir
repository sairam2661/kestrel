"builtin.module"() ({
  "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>}> ({
    "spirv.SpecConstant"() <{default_value = false, sym_name = "sc1"}> : () -> ()
    "spirv.SpecConstant"() <{default_value = 42 : i64, sym_name = "sc2"}> {spec_id = 5 : i64} : () -> ()
    "spirv.SpecConstant"() <{default_value = 1.500000e+00 : f32, sym_name = "sc3"}> : () -> ()
  }) : () -> ()
}) : () -> ()

