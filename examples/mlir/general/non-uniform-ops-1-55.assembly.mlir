module {
  func.func @group_non_uniform_rotate_khr(%arg0: f32, %arg1: i32) -> f32 {
    %cst4_i32 = spirv.Constant 4 : i32
    %0 = spirv.GroupNonUniformRotateKHR <Workgroup> %arg0, %arg1, cluster_size(%cst4_i32) : f32, i32, i32 -> f32
    return %0 : f32
  }
}

