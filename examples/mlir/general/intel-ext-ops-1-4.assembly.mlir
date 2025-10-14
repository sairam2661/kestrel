module {
  spirv.func @bf16_to_f32(%arg0: i16) "None" {
    %0 = spirv.INTEL.ConvertBF16ToF %arg0 : i16 to f32
    spirv.Return
  }
}

