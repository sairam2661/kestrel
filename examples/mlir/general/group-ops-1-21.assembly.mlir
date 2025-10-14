module {
  func.func @group_fmul(%arg0: f32) -> f32 {
    %0 = spirv.KHR.GroupFMul <Workgroup> <Reduce> %arg0 : f32
    return %0 : f32
  }
}

