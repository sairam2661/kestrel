module {
  func.func @group_fmax(%arg0: f32) -> f32 {
    %0 = spirv.GroupFMax <Workgroup> <Reduce> %arg0 : f32
    return %0 : f32
  }
}

