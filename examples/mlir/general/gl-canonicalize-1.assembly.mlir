module {
  func.func @clamp_fordlessthan(%arg0: f32, %arg1: f32, %arg2: f32) -> f32 {
    %0 = spirv.FOrdLessThan %arg0, %arg1 : f32
    %1 = spirv.Select %0, %arg1, %arg0 : i1, f32
    %2 = spirv.FOrdLessThan %arg2, %arg0 : f32
    %3 = spirv.Select %2, %arg2, %1 : i1, f32
    spirv.ReturnValue %3 : f32
  }
}

