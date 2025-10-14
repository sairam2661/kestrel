module {
  func.func @clamp_fordlessthanequal(%arg0: f32, %arg1: f32, %arg2: f32) -> f32 {
    %0 = spirv.FOrdLessThanEqual %arg1, %arg0 : f32
    %1 = spirv.Select %0, %arg0, %arg1 : i1, f32
    %2 = spirv.FOrdLessThanEqual %1, %arg2 : f32
    %3 = spirv.Select %2, %1, %arg2 : i1, f32
    spirv.ReturnValue %3 : f32
  }
}

