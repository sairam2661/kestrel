"builtin.module"() ({
  "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = (i16) -> (), sym_name = "bf16_to_f32"}> ({
  ^bb0(%arg0: i16):
    %0 = "spirv.INTEL.ConvertBF16ToF"(%arg0) : (i16) -> f32
    "spirv.Return"() : () -> ()
  }) : () -> ()
}) : () -> ()

