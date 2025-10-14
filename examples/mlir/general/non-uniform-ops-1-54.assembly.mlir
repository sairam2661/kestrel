module {
  func.func @group_non_uniform_rotate_khr(%arg0: f32, %arg1: i32) -> f32 {
    %0 = spirv.GroupNonUniformRotateKHR <Subgroup> %arg0, %arg1 : f32, i32 -> f32
    return %0 : f32
  }
}

