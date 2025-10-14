module {
  func.func @group_non_uniform_fmax_reduce(%arg0: f32) -> f32 {
    %0 = spirv.GroupNonUniformFMax <Workgroup> <Reduce> %arg0 : f32 -> f32
    return %0 : f32
  }
}

