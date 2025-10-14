module {
  spirv.func @f32_to_bf16(%arg0: f32) "None" {
    %0 = spirv.INTEL.ConvertFToBF16 %arg0 : f32 to i16
    spirv.Return
  }
}

