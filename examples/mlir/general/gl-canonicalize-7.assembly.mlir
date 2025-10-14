module {
  func.func @clamp_slessthanequal(%arg0: si32, %arg1: si32, %arg2: si32) -> si32 {
    %0 = spirv.SLessThanEqual %arg0, %arg1 : si32
    %1 = spirv.Select %0, %arg1, %arg0 : i1, si32
    %2 = spirv.SLessThanEqual %arg2, %arg0 : si32
    %3 = spirv.Select %2, %arg2, %1 : i1, si32
    spirv.ReturnValue %3 : si32
  }
}

