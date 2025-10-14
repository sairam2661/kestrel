module {
  func.func @group_fadd(%arg0: f32) -> f32 {
    %0 = spirv.GroupFAdd <Workgroup> <Reduce> %arg0 : f32
    return %0 : f32
  }
}

