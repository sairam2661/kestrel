module {
  func.func @group_non_uniform_all_equal(%arg0: f32) -> i1 {
    %0 = spirv.GroupNonUniformAllEqual <Subgroup> %arg0 : f32, i1
    return %0 : i1
  }
}

