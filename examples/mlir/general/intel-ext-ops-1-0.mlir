"builtin.module"() ({
  "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = (f32) -> (), sym_name = "f32_to_bf16"}> ({
  ^bb0(%arg0: f32):
    %0 = "spirv.INTEL.ConvertFToBF16"(%arg0) : (f32) -> i16
    "spirv.Return"() : () -> ()
  }) : () -> ()
}) : () -> ()

