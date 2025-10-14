module {
  func.func @group_fmin(%arg0: f32) -> f32 {
    %0 = spirv.GroupFMin <Workgroup> <Reduce> %arg0 : f32
    return %0 : f32
  }
}

